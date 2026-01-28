## Integration with Remotion

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
