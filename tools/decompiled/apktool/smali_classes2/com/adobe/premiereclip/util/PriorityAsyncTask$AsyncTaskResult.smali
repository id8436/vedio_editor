.class Lcom/adobe/premiereclip/util/PriorityAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/adobe/premiereclip/util/PriorityAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/adobe/premiereclip/util/PriorityAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adobe/premiereclip/util/PriorityAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p1, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$AsyncTaskResult;->mTask:Lcom/adobe/premiereclip/util/PriorityAsyncTask;

    .line 677
    iput-object p2, p0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 678
    return-void
.end method
