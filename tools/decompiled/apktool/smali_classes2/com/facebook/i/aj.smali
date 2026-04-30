.class Lcom/facebook/i/aj;
.super Lcom/facebook/i/al;
.source "NativeProtocol.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/i/al;-><init>(Lcom/facebook/i/ai;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/i/ai;)V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/facebook/i/aj;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 291
    const-string/jumbo v0, "com.facebook.katana"

    return-object v0
.end method
