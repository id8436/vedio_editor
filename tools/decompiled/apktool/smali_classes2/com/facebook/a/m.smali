.class Lcom/facebook/a/m;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# instance fields
.field public a:I

.field public b:Lcom/facebook/a/l;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/a/m;->a:I

    .line 902
    sget-object v0, Lcom/facebook/a/l;->a:Lcom/facebook/a/l;

    iput-object v0, p0, Lcom/facebook/a/m;->b:Lcom/facebook/a/l;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/a/b;)V
    .locals 0

    .prologue
    .line 900
    invoke-direct {p0}, Lcom/facebook/a/m;-><init>()V

    return-void
.end method
