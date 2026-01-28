## Remotion-Specific Implementation Guide

**Note:** This guide provides implementation examples for the Remotion framework. The video-director skill itself is technology-agnostic and can be implemented with any animation platform.

### Template Mapping for Remotion

### Template Mapping

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

### Best Practices

1. **Multi-stage workflow**: Follow the 4-stage process (Planning → Audio → Code → Render)
2. **Audio-driven timing**: Calculate frames based on actual audio durations: `durationInFrames = Math.ceil(audioDurationInSeconds × fps)`
3. **Quality gates**: Pass each stage's quality checks before proceeding to next stage
4. **Audio-visual sync**: Place Audio elements inside corresponding Sequences for proper synchronization
5. **File organization**: Keep all audio files in `public/` directory with clear naming (scene1.mp3, scene2.mp3)
6. **Long video optimization**: For videos >3 minutes, implement chapter breaks and voice variations
7. **Error prevention**: Run `npm run typecheck` before rendering to catch TypeScript errors

## Style System Integration

### Mapping Style Definitions to Remotion Components

The enhanced style system (v5.2+) provides automatic mapping from `style_definition` to visual design tokens. Here's how to implement style mappings in Remotion:

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
