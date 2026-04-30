.class public interface abstract Lcom/google/android/exoplayer/chunk/FormatEvaluator;
.super Ljava/lang/Object;
.source "FormatEvaluator.java"


# static fields
.field public static final TRIGGER_ADAPTIVE:I = 0x2

.field public static final TRIGGER_CUSTOM_BASE:I = 0x2710

.field public static final TRIGGER_INITIAL:I = 0x0

.field public static final TRIGGER_MANUAL:I = 0x1


# virtual methods
.method public abstract disable()V
.end method

.method public abstract enable()V
.end method

.method public abstract evaluate(Ljava/util/List;J[Lcom/google/android/exoplayer/chunk/Format;Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/android/exoplayer/chunk/MediaChunk;",
            ">;J[",
            "Lcom/google/android/exoplayer/chunk/Format;",
            "Lcom/google/android/exoplayer/chunk/FormatEvaluator$Evaluation;",
            ")V"
        }
    .end annotation
.end method
