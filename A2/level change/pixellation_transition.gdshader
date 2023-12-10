shader_type canvas_item;

uniform float pixelFactor : hint_range(0, 5) = 2.5; 
uniform sampler2D dissolve_pattern;
uniform float dissolve_state : hint_range(0.0, 1.1) = 0;

void fragment() {
	vec2 pixelNumber = vec2(textureSize(TEXTURE,0)) * pixelFactor;
	vec2 pixelatedUV = round(UV * pixelNumber)/pixelNumber;
	COLOR = texture(TEXTURE,UV);
	float pattern_val = texture(dissolve_pattern,UV).r;
	COLOR.a *= step(dissolve_state,pattern_val);
}
