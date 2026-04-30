.class Lcom/adobe/cliputils/ClipProfiler$StorageUsage;
.super Ljava/lang/Object;
.source "ClipProfiler.java"


# instance fields
.field freeStorageSpace:J

.field final synthetic this$0:Lcom/adobe/cliputils/ClipProfiler;

.field totalStorageSpace:J


# direct methods
.method public constructor <init>(Lcom/adobe/cliputils/ClipProfiler;JJ)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/adobe/cliputils/ClipProfiler$StorageUsage;->this$0:Lcom/adobe/cliputils/ClipProfiler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide p2, p0, Lcom/adobe/cliputils/ClipProfiler$StorageUsage;->totalStorageSpace:J

    .line 40
    iput-wide p4, p0, Lcom/adobe/cliputils/ClipProfiler$StorageUsage;->freeStorageSpace:J

    .line 41
    return-void
.end method
