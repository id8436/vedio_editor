.class public Lcom/google/gdata/util/parser/Intersection;
.super Lcom/google/gdata/util/parser/Parser;
.source "Intersection.java"


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
    .line 55
    invoke-direct {p0}, Lcom/google/gdata/util/parser/Parser;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/gdata/util/parser/Intersection;->left:Lcom/google/gdata/util/parser/Parser;

    .line 57
    iput-object p2, p0, Lcom/google/gdata/util/parser/Intersection;->right:Lcom/google/gdata/util/parser/Parser;

    .line 58
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
    const/4 v1, -0x1

    .line 68
    iget-object v0, p0, Lcom/google/gdata/util/parser/Intersection;->left:Lcom/google/gdata/util/parser/Parser;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/gdata/util/parser/Parser;->parse([CIILjava/lang/Object;)I

    move-result v0

    .line 69
    if-eq v0, v1, :cond_0

    .line 70
    iget-object v2, p0, Lcom/google/gdata/util/parser/Intersection;->right:Lcom/google/gdata/util/parser/Parser;

    add-int v3, p2, v0

    invoke-virtual {v2, p1, p2, v3, p4}, Lcom/google/gdata/util/parser/Parser;->parse([CIILjava/lang/Object;)I

    move-result v2

    .line 71
    if-ne v0, v2, :cond_0

    .line 75
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
