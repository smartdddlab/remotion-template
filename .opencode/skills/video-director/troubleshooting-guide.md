## Common Issues & Solutions

### Script Issues
| Issue | Solution |
|-------|----------|
| Vague visual descriptions | Use the 4-element structure: composition, subject, background, effects. Be specific about angles, movements, and details. |
| Overly complex scenes | Break into multiple simpler scenes. Each scene should focus on one main concept. |
| Timing mismatches | Recalculate timecodes based on narration speed (approx. 150 words per minute for clear educational content). |
| Inconsistent tone | Ensure mood matches educational level and topic. Maintain consistent emotional tone throughout video. |
| Weak narration | Use clear, accessible language. Control pacing with pauses for emphasis. Highlight key information. |

### Audio Generation Issues
| Issue | Solution |
|-------|----------|
| Inconsistent speech rates | Always use speed=1.0 for all scenes. Never use 0.5-0.9. |
| Text length mismatch | Calculate target word count using formula: target_words = duration × 3.8. Adjust text to fit within ±5% range. |
| Large speed variance between scenes | Verify all scenes use the same speed parameter. Re-generate if variance > 10%. |
| Fast/slow alternation perception | Ensure all scenes have speech rate within 3.5-4.1 characters per second. |
| Out-of-range speech speed | Re-generate with speed=1.0 or adjust text length. Target: 3.5-4.1 characters/second. |

### AI Prompt Issues
| Issue | Solution |
|-------|----------|
| Missing prompt elements | Ensure all 7 elements are included: composition, subject, style, lighting, colors, background, effects. |
| Generic descriptions | Be specific: "cinematic wide-angle shot" not just "wide shot"; "dramatic side lighting" not just "good lighting". |
| Style inconsistency | Choose one primary style (cinematic, hyper-realistic, minimalist) and maintain it across prompts. |
| Color palette issues | Select colors that support the scene's mood: cool blues for mystery, warm tones for friendly content. |
| Background neglect | Describe environment details that support the subject and mood. |

### Production Issues
| Issue | Solution |
|-------|----------|
| Incomplete audio specs | Cover all 4 aspects: music style, sound effects, voiceover requirements, ambient sounds. |
| Vague transitions | Specify exact transition types: "fade in from black", "match cut to close-up", "push left to next scene". |
| Mood-direction gaps | Provide specific performance guidance: "create sense of wonder", "build tension", "maintain engaging pace". |
| Technical constraints ignored | Consider rendering limitations for complex visuals and audio synchronization requirements. |
| Platform optimization | Adjust aspect ratios, durations, and content density for target platform (B站, YouTube, TikTok, etc.). |

### Template Structure Issues
| Issue | Solution |
|-------|----------|
| YAML formatting errors | Maintain proper indentation (2 spaces per level). Use `|` for multi-line strings. |
| Scene count mismatches | Ensure script scenes, shot_prompts, and production_notes have corresponding entries. |
| Timecode logic errors | Verify timecodes are sequential and total duration matches specified length. |
| Optional module confusion | advanced_specs modules are optional - only include if needed for specific production requirements. |
| Field completion | Fill all placeholder fields ("Enter...") with specific content before using template. |

## From Monotone to Masterpiece: Visual Design Upgrade Guide

### The Problem
You've been creating videos with solid structure but monotone visual design - black/blue backgrounds, generic compositions, and lack of artistic flair. This guide helps you transform templates into visually compelling masterpieces.

### Quick Upgrade Checklist

#### Phase 1: Audit Your Current Template
- [ ] **Identify visual weaknesses**: List scenes with generic backgrounds, poor contrast, or weak compositions
- [ ] **Color analysis**: Document current color usage (likely black/blue dominance)
- [ ] **Style consistency**: Check if scenes have coherent visual language
- [ ] **Motion review**: Evaluate animation curves and timing

#### Phase 2: Define Your Visual Strategy
- [ ] **Choose a primary style**: cinematic/hyper-realistic/flat design/vector illustration/minimalist
- [ ] **Create color strategy**: Define primary/secondary palettes with emotional mapping
- [ ] **Establish composition principles**: Rule of thirds, leading lines, visual hierarchy
- [ ] **Define motion language**: Easing curves, timing patterns, staging approaches
- [ ] **Set typography standards**: Font choices, size hierarchy, text animation

#### Phase 3: Upgrade Your Template
1. **Add visual_design_guide section** (as shown in updated template)
2. **Revise shot_prompts** to reference visual design principles
3. **Update production_notes** with visual-specific guidance
4. **Enhance script visual descriptions** with composition details

#### Phase 4: Technical Implementation
- **Backgrounds**: Replace solid colors with gradients, textures, or dynamic backgrounds
- **Color application**: Use defined palette consistently across components
- **Animation refinement**: Apply easing curves and timing from motion_design
- **Typography implementation**: Follow font hierarchy and text animation patterns

### Common Upgrade Patterns

#### From Black Backgrounds to Dynamic Environments
- **Instead of**: `backgroundColor: "black"`
- **Try**: 
  ```typescript
  background: `linear-gradient(135deg, ${colors.primary} 0%, ${colors.secondary} 100%)`
  ```
  Or use animated gradients, particle systems, or textured overlays

#### From Monochrome to Strategic Color
- **Instead of**: Single color dominance
- **Try**: Complementary palette with emotional mapping
  - Teal (#00bfff) for curiosity/technology
  - Orange (#ff6b35) for energy/attention
  - Dark blue (#001f3f) for depth/seriousness

#### From Static to Dynamic Composition
- **Instead of**: Centered elements on empty backgrounds
- **Try**: Rule of thirds placement with layered elements
  - Foreground: main subject with parallax
  - Midground: contextual elements
  - Background: atmospheric elements with subtle motion

#### From Basic to Advanced Animation
- **Instead of**: Linear interpolation
- **Try**: Spring animations for energy, ease-in-out for smoothness
  ```typescript
  const scale = spring({ frame, fps: 30, config: { damping: 20 } })
  ```

### Example Transformation: Countdown Video

**Before (monotone)**:
- Black background, blue glowing text
- Centered composition
- Basic scale animation

**After (visually rich)**:
- Animated gradient background (teal to dark blue)
- Text placed at rule-of-thirds intersection
- Spring animation with overshoot
- Particle system emitting from numbers
- Subtle chromatic aberration effect
- Dynamic lighting that reacts to countdown

### Maintenance Tips
- **Visual style guide**: Keep it updated as you discover what works
- **Component library**: Build reusable styled components for consistency
- **Regular audits**: Review videos for visual coherence quarterly
- **Feedback loop**: Test with target audience for visual comprehension

## Style System Troubleshooting

The enhanced style system (v5.2+) introduces intelligent style handling with confidence calculation, conflict resolution, and vague style clarification. Here are common issues and solutions:

### Confidence Calculation Issues
| Issue | Solution |
|-------|----------|
| **Low confidence scores (<50%)** | System cannot decide style automatically. Must ask user for explicit style specification. |
| **Inconsistent confidence across dimensions** | Check keyword_match (40%), content_relevance (25%), emotion_alignment (20%), video_type_fit (15%) weights. |
| **High confidence but wrong style** | Verify content analysis: topic, emotional tone, video type. Adjust weights if needed. |

### Style Conflict Resolution
| Issue | Solution |
|-------|----------|
| **Cultural-Era conflicts** (e.g., Chinese + Cyberpunk) | Use priority: cultural_style > era_style > genre_style. Keep cultural style, adjust era/style. |
| **Era-Genre conflicts** (e.g., Classical + Vaporwave) | Analyze content depth: shallow content → simpler style, deep content → complex style. |
| **Genre-Content conflicts** (e.g., Minimalist + Complex topic) | Adjust style complexity based on content depth and target audience. |
| **Multiple conflicts detected** | Resolve critical conflicts first, then major, then moderate, then minor. |

### Vague Style Handling Issues
| Issue | Solution |
|-------|----------|
| **User says "cool" or "modern"** | Must clarify: provide 2-3 specific style options (e.g., "Do you mean cyberpunk tech or modern minimalist?") |
| **User says "professional" or "creative"** | Ask for visual examples or describe specific visual characteristics. |
| **User refuses to clarify** | Cannot proceed. Stop and explain: "I need specific style to create consistent visual design." |
| **Vague term not in dictionary** | Ask user to describe visual characteristics: colors, shapes, mood, cultural references. |

### Baoyu-Skills Mapping Issues
| Issue | Solution |
|-------|----------|
| **Style not mapping to Baoyu-skill** | Check `style-knowledge-base.md` for correct mapping. Add missing mappings if needed. |
| **Incorrect Baoyu parameters** | Verify parameter mapping table in `style-knowledge-base.md`. |
| **Baoyu-skill not available** | Use alternative skill mapping from `style-knowledge-base.md` fallback table. |
| **Generated images don't match style** | Check Baoyu-skill parameters and adjust style_weight, color_palette, visual_elements. |

### Style Definition Validation
| Issue | Solution |
|-------|----------|
| **Missing required fields** | `style_definition` must have at least one of: cultural_style, era_style, genre_style |
| **Invalid style values** | Check allowed values in `style-knowledge-base.md`: cultural_style (7 values), era_style (5), genre_style (7) |
| **Style rationale missing** | Always include `style_rationale` to explain why this style fits the content |
| **Backward compatibility issues** | Old `visual_aesthetic` field still works. System maps it to new style system. |

### Automatic Mapping Problems
| Issue | Solution |
|-------|----------|
| **Colors not mapping correctly** | Check `style-knowledge-base.md` color palette mapping for each style |
| **Typography mapping wrong** | Verify font mapping table in `style-knowledge-base.md` |
| **Motion design not applied** | Check motion design mapping for each style in knowledge base |
| **Visual elements missing** | Ensure visual_elements mapping includes all required motifs for the style |

### User Experience Issues
| Issue | Solution |
|-------|----------|
| **Too many clarification questions** | Batch questions: ask about visual, emotional, functional dimensions together |
| **User confused by style options** | Provide visual examples or descriptions for each option |
| **Style recommendations seem random** | Explain reasoning: "Based on your content about [topic], I recommend [style] because [reason]" |
| **User wants custom style not in system** | Offer closest existing styles, or document new style for future addition |

### Performance Issues
| Issue | Solution |
|-------|----------|
| **Style calculation too slow** | Cache style analysis results for similar content |
| **Conflict detection expensive** | Pre-compute common conflict patterns |
| **Baoyu-skill mapping slow** | Cache mapping results |

### When to Seek Additional Help
- Complex 3D visualizations
- Advanced motion graphics
- Brand identity integration
- Accessibility requirements (color contrast, motion sensitivity)

