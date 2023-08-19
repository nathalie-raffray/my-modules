//--------------------------------------------------------------------------------------------------
vec4 boxBlur(vec2 inUv, vec2 textureDim, uint textureIndex, int blurRange, float blurStepModifier, float factor)
{
    int n = 0;
    vec4 result = vec4(0.0);
    for (int x = -blurRange; x < blurRange; x++) 
    {
        for (int y = -blurRange; y < blurRange; y++) 
        {
            vec2 offset = vec2(x, y) / textureDim * blurStepModifier;
            result += texture(textures[textureIndex], inUv + offset);
            ++n;
        }
    }
    result = result / (float(n));

    return result;
}

//--------------------------------------------------------------------------------------------------
vec4 boboxBlur()
{
    vec4 result = vec4(0.0);
    return result;
}
