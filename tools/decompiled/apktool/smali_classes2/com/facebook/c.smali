.class Lcom/facebook/c;
.super Ljava/lang/Object;
.source "AccessTokenCache.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/au;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Lcom/facebook/au;

    invoke-static {}, Lcom/facebook/w;->f()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/au;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
