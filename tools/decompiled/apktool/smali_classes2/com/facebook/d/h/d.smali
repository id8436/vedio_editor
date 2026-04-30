.class Lcom/facebook/d/h/d;
.super Lcom/facebook/d/h/a;
.source "CloseableReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/d/h/a",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lcom/facebook/d/h/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Lcom/facebook/d/h/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 393
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/facebook/d/h/d;->d:Ljava/lang/ref/ReferenceQueue;

    .line 396
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/facebook/d/h/e;

    invoke-direct {v1}, Lcom/facebook/d/h/e;-><init>()V

    const-string/jumbo v2, "CloseableReferenceDestructorThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 409
    return-void
.end method

.method private constructor <init>(Lcom/facebook/d/h/j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/d/h/j",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 414
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/d/h/a;-><init>(Lcom/facebook/d/h/j;Lcom/facebook/d/h/b;)V

    .line 415
    new-instance v0, Lcom/facebook/d/h/f;

    sget-object v1, Lcom/facebook/d/h/d;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, v1}, Lcom/facebook/d/h/f;-><init>(Lcom/facebook/d/h/a;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lcom/facebook/d/h/d;->e:Lcom/facebook/d/h/f;

    .line 416
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/d/h/j;Lcom/facebook/d/h/b;)V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/facebook/d/h/d;-><init>(Lcom/facebook/d/h/j;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/facebook/d/h/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/facebook/d/h/i",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 419
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/d/h/a;-><init>(Ljava/lang/Object;Lcom/facebook/d/h/i;Lcom/facebook/d/h/b;)V

    .line 420
    new-instance v0, Lcom/facebook/d/h/f;

    sget-object v1, Lcom/facebook/d/h/d;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, v1}, Lcom/facebook/d/h/f;-><init>(Lcom/facebook/d/h/a;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lcom/facebook/d/h/d;->e:Lcom/facebook/d/h/f;

    .line 421
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/facebook/d/h/i;Lcom/facebook/d/h/b;)V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0, p1, p2}, Lcom/facebook/d/h/d;-><init>(Ljava/lang/Object;Lcom/facebook/d/h/i;)V

    return-void
.end method

.method static synthetic i()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lcom/facebook/d/h/d;->d:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-super {p0}, Lcom/facebook/d/h/a;->b()Lcom/facebook/d/h/a;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/facebook/d/h/d;->e:Lcom/facebook/d/h/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/d/h/f;->a(Z)V

    .line 426
    return-void
.end method
