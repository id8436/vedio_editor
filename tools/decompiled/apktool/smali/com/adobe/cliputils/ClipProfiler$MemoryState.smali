.class Lcom/adobe/cliputils/ClipProfiler$MemoryState;
.super Ljava/lang/Object;
.source "ClipProfiler.java"


# instance fields
.field freeSystemMemorySize:J

.field processMemoryFreeSize:J

.field processMemoryUsageSize:J

.field final synthetic this$0:Lcom/adobe/cliputils/ClipProfiler;

.field totalSystemMemorySize:J


# direct methods
.method public constructor <init>(Lcom/adobe/cliputils/ClipProfiler;JJJJ)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/adobe/cliputils/ClipProfiler$MemoryState;->this$0:Lcom/adobe/cliputils/ClipProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p2, p0, Lcom/adobe/cliputils/ClipProfiler$MemoryState;->totalSystemMemorySize:J

    .line 27
    iput-wide p4, p0, Lcom/adobe/cliputils/ClipProfiler$MemoryState;->freeSystemMemorySize:J

    .line 28
    iput-wide p6, p0, Lcom/adobe/cliputils/ClipProfiler$MemoryState;->processMemoryUsageSize:J

    .line 29
    iput-wide p8, p0, Lcom/adobe/cliputils/ClipProfiler$MemoryState;->processMemoryFreeSize:J

    .line 30
    return-void
.end method
