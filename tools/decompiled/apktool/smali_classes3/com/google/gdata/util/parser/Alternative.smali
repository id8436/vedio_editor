.class public Lcom/google/gdata/util/parser/Alternative;
.super Lcom/google/gdata/util/parser/Parser;
.source "Alternative.java"


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
    .line 50
    invoke-direct {p0}, Lcom/google/gdata/util/parser/Parser;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/gdata/util/parser/Alternative;->left:Lcom/google/gdata/util/parser/Parser;

    .line 52
    iput-object p2, p0, Lcom/google/gdata/util/parser/Alternative;->right:Lcom/google/gdata/util/parser/Parser;

    .line 53
    return-void
.end method


# virtual methods
.method public parse([CIILjava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CIITT;)I"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/gdata/util/parser/Alternative;->left:Lcom/google/gdata/util/parser/Parser;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/gdata/util/parser/Parser;->parse([CIILjava/lang/Object;)I

    move-result v0

    .line 65
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 68
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/gdata/util/parser/Alternative;->right:Lcom/google/gdata/util/parser/Parser;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/gdata/util/parser/Parser;->parse([CIILjava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method
