.class public Lcom/google/gdata/util/parser/Sequence;
.super Lcom/google/gdata/util/parser/Parser;
.source "Sequence.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gdata/util/parser/Parser",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private left:Lcom/google/gdata/util/parser/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private right:Lcom/google/gdata/util/parser/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gdata/util/parser/Parser;Lcom/google/gdata/util/parser/Parser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;",
            "Lcom/google/gdata/util/parser/Parser",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/gdata/util/parser/Parser;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/gdata/util/parser/Sequence;->left:Lcom/google/gdata/util/parser/Parser;

    .line 54
    iput-object p2, p0, Lcom/google/gdata/util/parser/Sequence;->right:Lcom/google/gdata/util/parser/Parser;

    .line 55
    return-void
.end method


# virtual methods
.method public parse([CIILjava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CIITT;)I"
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 66
    iget-object v1, p0, Lcom/google/gdata/util/parser/Sequence;->left:Lcom/google/gdata/util/parser/Parser;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/gdata/util/parser/Parser;->parse([CIILjava/lang/Object;)I

    move-result v1

    .line 67
    if-eq v1, v0, :cond_0

    .line 68
    iget-object v2, p0, Lcom/google/gdata/util/parser/Sequence;->right:Lcom/google/gdata/util/parser/Parser;

    add-int v3, p2, v1

    invoke-virtual {v2, p1, v3, p3, p4}, Lcom/google/gdata/util/parser/Parser;->parse([CIILjava/lang/Object;)I

    move-result v2

    .line 69
    if-eq v2, v0, :cond_0

    .line 70
    add-int v0, v1, v2

    .line 73
    :cond_0
    return v0
.end method
