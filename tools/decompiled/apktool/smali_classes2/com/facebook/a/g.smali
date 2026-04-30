.class final Lcom/facebook/a/g;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Lcom/facebook/ai;


# instance fields
.field final synthetic a:Lcom/facebook/a/h;

.field final synthetic b:Lcom/facebook/GraphRequest;

.field final synthetic c:Lcom/facebook/a/q;

.field final synthetic d:Lcom/facebook/a/m;


# direct methods
.method constructor <init>(Lcom/facebook/a/h;Lcom/facebook/GraphRequest;Lcom/facebook/a/q;Lcom/facebook/a/m;)V
    .locals 0

    .prologue
    .line 943
    iput-object p1, p0, Lcom/facebook/a/g;->a:Lcom/facebook/a/h;

    iput-object p2, p0, Lcom/facebook/a/g;->b:Lcom/facebook/GraphRequest;

    iput-object p3, p0, Lcom/facebook/a/g;->c:Lcom/facebook/a/q;

    iput-object p4, p0, Lcom/facebook/a/g;->d:Lcom/facebook/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/as;)V
    .locals 4

    .prologue
    .line 946
    iget-object v0, p0, Lcom/facebook/a/g;->a:Lcom/facebook/a/h;

    iget-object v1, p0, Lcom/facebook/a/g;->b:Lcom/facebook/GraphRequest;

    iget-object v2, p0, Lcom/facebook/a/g;->c:Lcom/facebook/a/q;

    iget-object v3, p0, Lcom/facebook/a/g;->d:Lcom/facebook/a/m;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/facebook/a/a;->a(Lcom/facebook/a/h;Lcom/facebook/GraphRequest;Lcom/facebook/as;Lcom/facebook/a/q;Lcom/facebook/a/m;)V

    .line 947
    return-void
.end method
