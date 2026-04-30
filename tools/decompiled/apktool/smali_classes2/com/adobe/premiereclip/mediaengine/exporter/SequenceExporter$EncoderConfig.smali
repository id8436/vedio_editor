.class Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;
.super Ljava/lang/Object;
.source "SequenceExporter.java"


# instance fields
.field final mAudioBitrate:I

.field final mAudioChannel:I

.field final mAudioSampleRate:I

.field final mEglContext:Landroid/opengl/EGLContext;

.field final mOutputFile:Ljava/io/File;

.field final mVideoBitRate:I

.field final mVideoHeight:I

.field final mVideoWidth:I


# direct methods
.method public constructor <init>(Ljava/io/File;IIIIIILandroid/opengl/EGLContext;)V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mOutputFile:Ljava/io/File;

    .line 126
    iput p2, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mVideoWidth:I

    .line 127
    iput p3, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mVideoHeight:I

    .line 128
    iput p4, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mVideoBitRate:I

    .line 129
    iput p5, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mAudioSampleRate:I

    .line 130
    iput p6, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mAudioChannel:I

    .line 131
    iput p7, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mAudioBitrate:I

    .line 132
    iput-object p8, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mEglContext:Landroid/opengl/EGLContext;

    .line 133
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "EncoderConfig, Video: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mVideoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mVideoHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mVideoBitRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Audio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mAudioSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mAudioChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mAudioBitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mOutputFile:Ljava/io/File;

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\' ctxt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/mediaengine/exporter/SequenceExporter$EncoderConfig;->mEglContext:Landroid/opengl/EGLContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    return-object v0
.end method
