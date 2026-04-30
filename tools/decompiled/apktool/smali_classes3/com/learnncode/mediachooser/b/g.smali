.class Lcom/learnncode/mediachooser/b/g;
.super Ljava/lang/Object;
.source "MediaAsync.java"


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
.field final a:Lcom/learnncode/mediachooser/b/b;

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Lcom/learnncode/mediachooser/b/b;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/learnncode/mediachooser/b/b;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 675
    iput-object p1, p0, Lcom/learnncode/mediachooser/b/g;->a:Lcom/learnncode/mediachooser/b/b;

    .line 676
    iput-object p2, p0, Lcom/learnncode/mediachooser/b/g;->b:[Ljava/lang/Object;

    .line 677
    return-void
.end method
