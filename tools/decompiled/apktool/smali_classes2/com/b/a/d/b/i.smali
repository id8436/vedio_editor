.class public Lcom/b/a/d/b/i;
.super Ljava/lang/Object;
.source "Engine.java"


# instance fields
.field private final a:Lcom/b/a/d/b/l;

.field private final b:Lcom/b/a/h/f;


# direct methods
.method public constructor <init>(Lcom/b/a/h/f;Lcom/b/a/d/b/l;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/b/a/d/b/i;->b:Lcom/b/a/h/f;

    .line 53
    iput-object p2, p0, Lcom/b/a/d/b/i;->a:Lcom/b/a/d/b/l;

    .line 54
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/b/a/d/b/i;->a:Lcom/b/a/d/b/l;

    iget-object v1, p0, Lcom/b/a/d/b/i;->b:Lcom/b/a/h/f;

    invoke-virtual {v0, v1}, Lcom/b/a/d/b/l;->b(Lcom/b/a/h/f;)V

    .line 58
    return-void
.end method
