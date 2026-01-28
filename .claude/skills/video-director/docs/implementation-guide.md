## Remotion专属实现指南

**注意：** 本指南提供Remotion框架的实现示例。video-director技能本身是技术无关的，可以在任何动画平台上实现。

### 模板映射（Remotion）

```typescript
// Timecode to frames conversion (30fps)
// 0:00 - 0:15 → frames 0-450
// 0:15 - 0:45 → frames 450-1350
// 0:45 - 0:60 → frames 1350-1800

// Scene structure in Remotion
<Sequence from={0} durationInFrames={450}>
  {/* Content based on 'visual' description */}
</Sequence>

<Audio src={narrationAudio} />
```

### 最佳实践

1. **多阶段工作流**：遵循4阶段流程（规划 → 音频 → 代码 → 渲染）
2. **音频驱动时序**：根据实际音频时长计算帧数：`durationInFrames = Math.ceil(audioDurationInSeconds × fps)`
3. **质量检查点**：通过每个阶段的质量检查后再进入下一阶段
4. **音视频同步**：将音频元素放置在对应的Sequence中以确保正确同步
5. **文件组织**：将所有音频文件保存在`public/`目录中，使用清晰的命名（scene1.mp3、scene2.mp3）
6. **长视频优化**：对于超过3分钟的视频，实现章节分割和语音变化
7. **错误预防**：在渲染前运行`npm run typecheck`以捕获TypeScript错误

## 风格系统集成

### 风格定义到Remotion组件的映射

增强的风格系统（v5.2+）提供从`style_definition`到视觉设计令牌的自动映射。以下是如何在Remotion中实现风格映射：

```typescript
// Example: Chinese style implementation
const chineseStyle = {
  colors: {
    primary: "#000000", // 水墨黑
    secondary: "#FFFFFF", // 宣纸白
    accent: "#FFD700", // 金
  },
  typography: {
    primaryFont: "FZShuTi, HanYiXingKai",
    secondaryFont: "SourceHanSerif, SimSun",
  },
  motion: {
    easing: "ease-in-out",
    transitions: ["fade", "dissolve", "ink dissolve"]
  }
};

// Usage in component
const ChineseScene: React.FC = () => {
  return (
    <AbsoluteFill style={{ 
      backgroundColor: chineseStyle.colors.secondary,
      backgroundImage: `url('/textures/rice-paper.png')`
    }}>
      <h1 style={{ 
        fontFamily: chineseStyle.typography.primaryFont,
        color: chineseStyle.colors.primary
      }}>
        中医文化
      </h1>
    </AbsoluteFill>
  );
};
```

### Automatic Style Mapping Process

1. **Extract style definitions** from YAML's `style_definition` section
2. **Map to design tokens** using `style-knowledge-base.md` mappings
3. **Apply to components** through consistent prop patterns
4. **Maintain consistency** across all scenes

### Key Implementation Patterns

#### 1. Style-Aware Component Factory
```typescript
const createStyledComponent = (styleDefinition: StyleDefinition) => {
  const tokens = mapStyleToTokens(styleDefinition);
  return (props: ComponentProps) => (
    <div style={applyStyleTokens(tokens, props)}>
      {props.children}
    </div>
  );
};
```

#### 2. Dynamic Style Switching
```typescript
const SceneWrapper: React.FC<{style: StyleDefinition}> = ({ style, children }) => {
  const styleContext = useMemo(() => createStyleContext(style), [style]);
  return (
    <StyleContext.Provider value={styleContext}>
      {children}
    </StyleContext.Provider>
  );
};
```

#### 3. Cross-Scene Consistency
- Use React Context for style propagation
- Create reusable style hooks: `useChineseStyle()`, `useCyberpunkStyle()`
- Implement style validation to ensure consistency

### Integration with Baoyu-Skills Image Generation

The style system automatically maps to Baoyu-skill parameters:

```yaml
# Automatic mapping example
style_definition:
  cultural_style: "chinese"
  era_style: "modern"
  genre_style: "minimalist"

# Maps to Baoyu-skill parameters:
baoyu_skill: "baoyu-article-illustrator"
baoyu_style: "tech/editorial/blueprint"
baoyu_parameters:
  color_palette: "black_white_gold"
  visual_elements: ["ink wash", "traditional patterns"]
```

### Quality Assurance for Style Implementation

Add to your quality checklist:

- [ ] **Style definition present**: `style_definition` section exists in YAML
- [ ] **Automatic mapping verified**: Check `visual_art` section for correct auto-mapping
- [ ] **Cross-scene consistency**: Same style applied across all scenes
- [ ] **Baoyu-skill mapping**: Verify correct Baoyu-skill and parameters
- [ ] **Design token implementation**: Style tokens correctly implemented in components
- [ ] **Accessibility compliance**: Color contrast meets 4.5:1 minimum ratio

### Troubleshooting Style Implementation

| Issue | Solution |
|-------|----------|
| Style not applying | Check `style_definition` format and field names |
| Incorrect color mapping | Verify mapping in `style-knowledge-base.md` |
| Inconsistent across scenes | Use Style Context or global style provider |
| Baoyu-skill mismatch | Check `style-knowledge-base.md` for correct skill mapping |

### Performance Considerations

- **Style token caching**: Cache style tokens to avoid recalculation
- **Lazy style loading**: Load style assets only when needed
- **Bundle size optimization**: Tree-shake unused style definitions

## Quality Checklist

### Workflow Coordination
- [ ] **Stage completion**: Each production stage completed before next stage begins
- [ ] **Deliverables verified**: All stage deliverables produced and validated
- [ ] **Dependencies satisfied**: Stage dependencies met before proceeding
- [ ] **Quality gates passed**: All quality gate checks passed for current stage
- [ ] **Audio before code**: Audio generation completed before code implementation
- [ ] **Code before render**: Code implementation verified before rendering
- [ ] **Long video strategy**: For videos >180s, chapter division and voice variation applied

### Audio Generation Standards
- [ ] **文本长度验证**：每个场景的文本字数在允许范围内
- [ ] **参数统一**：所有场景使用 speed=1.0
- [ ] **音色一致**：使用相同的 voice 参数
- [ ] **情感统一**：所有场景使用 emotion=neutral
- [ ] **语速验证**：实际语速在 3.5-4.1 字/秒范围内
- [ ] **一致性检查**：场景间语速差异 < 10%
- [ ] **时长验证**：实际时长 vs 目标时长，误差 < 10%

### Basic Information
- [ ] Title is descriptive and engaging
- [ ] Theme clearly identifies core scientific concept
  - [ ] Duration specified and appropriate for content (consider chapter division for >180s videos)
- [ ] Target platform specified and considered in format

### Script Structure
- [ ] Each scene has realistic timecodes (MM:SS format)
- [ ] Scene names are descriptive and sequential
- [ ] Visual descriptions include all 4 elements: composition, subject, background, effects
- [ ] Narration uses clear, accessible language with pacing considerations
- [ ] Mood is specified and consistent with educational level
- [ ] Transition style matches emotional tone between scenes

### AI Painting Prompts
- [ ] Each prompt includes all 7 required elements: composition, subject, style, lighting, colors, background, effects
- [ ] Prompts are in English with specific, descriptive language
- [ ] Style matches intended visual aesthetic (cinematic, realistic, etc.)
- [ ] Lighting description creates appropriate mood
- [ ] Color palette supports the scene's emotional tone

### Production Notes
- [ ] Mood guidance provides detailed performance direction
- [ ] Transition_in specifies how scene begins
- [ ] Transition_out specifies how scene ends
- [ ] Audio requirements cover all 4 aspects: music, sound effects, voiceover, ambient sound
- [ ] Technical constraints considered (rendering, performance, etc.)

### Overall Consistency
- [ ] Script flows logically scene-to-scene
- [ ] Visual style consistent throughout video
- [ ] Audio elements support and enhance visual content
- [ ] Educational content appropriate for target audience level
- [ ] Pacing allows for comprehension without rushing
