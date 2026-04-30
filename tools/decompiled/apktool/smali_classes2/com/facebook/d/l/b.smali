.class public Lcom/facebook/d/l/b;
.super Ljava/lang/Object;
.source "RealtimeSinceBootClock.java"


# static fields
.field private static final a:Lcom/facebook/d/l/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/facebook/d/l/b;

    invoke-direct {v0}, Lcom/facebook/d/l/b;-><init>()V

    sput-object v0, Lcom/facebook/d/l/b;->a:Lcom/facebook/d/l/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static a()Lcom/facebook/d/l/b;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/facebook/d/l/b;->a:Lcom/facebook/d/l/b;

    return-object v0
.end method


# virtual methods
.method public b()J
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method
