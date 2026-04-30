.class public interface abstract Lcom/adobe/customextractor/Tracks/TrackOutput;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# virtual methods
.method public abstract format(Lcom/adobe/customextractor/Util/Media/MediaFormat;)V
.end method

.method public abstract sampleData(Lcom/adobe/customextractor/extractor/Input/ExtractorInput;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract sampleData(Lcom/adobe/customextractor/Util/ParsableByteArray;I)V
.end method

.method public abstract sampleMetadata(JIII[B)V
.end method
