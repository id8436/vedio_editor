.class Lcom/a/a/a/c;
.super Ljava/lang/Object;
.source "BatchingScheduler.java"


# instance fields
.field final a:J

.field final b:Ljava/lang/Long;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final c:Lcom/a/a/a/j/c;


# direct methods
.method public constructor <init>(JLjava/lang/Long;Lcom/a/a/a/j/c;)V
    .locals 1
    .param p3    # Ljava/lang/Long;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-wide p1, p0, Lcom/a/a/a/c;->a:J

    .line 171
    iput-object p3, p0, Lcom/a/a/a/c;->b:Ljava/lang/Long;

    .line 172
    iput-object p4, p0, Lcom/a/a/a/c;->c:Lcom/a/a/a/j/c;

    .line 173
    return-void
.end method
