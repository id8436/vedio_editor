.class public Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;
.super Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;
.source "GPUMediaTwoInputFilter.java"


# static fields
.field private static final VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 inputTextureCoordinate2;\n \nvarying vec2 textureCoordinate;\nvarying vec2 textureCoordinate2;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n    textureCoordinate2 = inputTextureCoordinate2.xy;\n}"


# instance fields
.field private mFilterInputTextureUniform2:I

.field private mFilterSecondTextureCoordinateAttribute:I

.field private mGPUMediaTexture2:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "attribute vec4 inputTextureCoordinate2;\n \nvarying vec2 textureCoordinate;\nvarying vec2 textureCoordinate2;\n \nvoid main()\n{\n    gl_Position = pos;\n    textureCoordinate = uv;\n    textureCoordinate2 = inputTextureCoordinate2.xy;\n}"

    invoke-direct {p0, v0, p1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected getFragmentShaderExternalOES()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->getFragmentShaderExternalOES()Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->mGPUMediaTexture2:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->mGPUMediaTexture2:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->isExternalOES()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const-string/jumbo v1, "uniform sampler2D inputImageTexture2;"

    const-string/jumbo v2, "uniform samplerExternalOES inputImageTexture2;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_0
    return-object v0
.end method

.method protected isExternalOES()Z
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->isExternalOES()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->mGPUMediaTexture2:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->mGPUMediaTexture2:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->isExternalOES()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->mGPUMediaTexture2:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 78
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onDestroy()V

    .line 79
    return-void
.end method

.method protected onDrawArraysPost()V
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->mFilterSecondTextureCoordinateAttribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 105
    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method protected onInit()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->onInit()V

    .line 72
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "inputTextureCoordinate2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->mFilterSecondTextureCoordinateAttribute:I

    .line 73
    invoke-virtual {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->getProgram()I

    move-result v0

    const-string/jumbo v1, "inputImageTexture2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->mFilterInputTextureUniform2:I

    .line 74
    return-void
.end method

.method public setSecondGPUMediaTexture(Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->mGPUMediaTexture2:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    .line 66
    return-void
.end method

.method protected textureDraw()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->textureDraw()V

    .line 91
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->mGPUMediaTexture2:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    if-eqz v0, :cond_0

    .line 92
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 93
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->mGPUMediaTexture2:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->mFilterSecondTextureCoordinateAttribute:I

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->onDraw(I)V

    .line 94
    iget v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->mFilterInputTextureUniform2:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 96
    :cond_0
    return-void
.end method

.method public updateSurface()V
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaFilter;->updateSurface()V

    .line 84
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->mGPUMediaTexture2:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->mGPUMediaTexture2:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->isExternalOES()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/adobe/premiereclip/mediaengine/gpumedia/filters/GPUMediaTwoInputFilter;->mGPUMediaTexture2:Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/mediaengine/gpumedia/surface/GPUMediaTexture;->update()V

    .line 87
    :cond_0
    return-void
.end method
