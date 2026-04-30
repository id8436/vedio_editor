.class Lcom/facebook/bc;
.super Ljava/lang/Object;
.source "ProgressOutputStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/ar;

.field final synthetic b:Lcom/facebook/bb;


# direct methods
.method constructor <init>(Lcom/facebook/bb;Lcom/facebook/ar;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/facebook/bc;->b:Lcom/facebook/bb;

    iput-object p2, p0, Lcom/facebook/bc;->a:Lcom/facebook/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 79
    iget-object v0, p0, Lcom/facebook/bc;->a:Lcom/facebook/ar;

    iget-object v1, p0, Lcom/facebook/bc;->b:Lcom/facebook/bb;

    .line 80
    invoke-static {v1}, Lcom/facebook/bb;->a(Lcom/facebook/bb;)Lcom/facebook/ap;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/bc;->b:Lcom/facebook/bb;

    .line 81
    invoke-static {v2}, Lcom/facebook/bb;->b(Lcom/facebook/bb;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/bc;->b:Lcom/facebook/bb;

    .line 82
    invoke-static {v4}, Lcom/facebook/bb;->c(Lcom/facebook/bb;)J

    move-result-wide v4

    .line 79
    invoke-interface/range {v0 .. v5}, Lcom/facebook/ar;->a(Lcom/facebook/ap;JJ)V

    .line 83
    return-void
.end method
