.class Lorg/mortbay/thread/QueuedThreadPool$Lock;
.super Ljava/lang/Object;
.source "QueuedThreadPool.java"


# instance fields
.field private final this$0:Lorg/mortbay/thread/QueuedThreadPool;


# direct methods
.method private constructor <init>(Lorg/mortbay/thread/QueuedThreadPool;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lorg/mortbay/thread/QueuedThreadPool$Lock;->this$0:Lorg/mortbay/thread/QueuedThreadPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/mortbay/thread/QueuedThreadPool;Lorg/mortbay/thread/QueuedThreadPool$1;)V
    .locals 0

    .prologue
    .line 670
    invoke-direct {p0, p1}, Lorg/mortbay/thread/QueuedThreadPool$Lock;-><init>(Lorg/mortbay/thread/QueuedThreadPool;)V

    return-void
.end method
