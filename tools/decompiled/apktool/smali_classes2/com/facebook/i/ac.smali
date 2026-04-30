.class Lcom/facebook/i/ac;
.super Ljava/lang/Object;
.source "FacebookWebFallbackDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/i/ab;


# direct methods
.method constructor <init>(Lcom/facebook/i/ab;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/facebook/i/ac;->a:Lcom/facebook/i/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/i/ac;->a:Lcom/facebook/i/ab;

    invoke-static {v0}, Lcom/facebook/i/ab;->a(Lcom/facebook/i/ab;)V

    .line 145
    return-void
.end method
