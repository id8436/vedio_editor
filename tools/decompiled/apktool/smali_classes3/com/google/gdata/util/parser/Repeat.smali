.class public Lcom/google/gdata/util/parser/Repeat;
.super Lcom/google/gdata/util/parser/Parser;
.source "Repeat.java"


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
.field private max:I

.field private min:I

.field private subject:Lcom/google/gdata/util/parser/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gdata/util/parser/Parser;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/util/parser/Repeat;-><init>(Lcom/google/gdata/util/parser/Parser;II)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/parser/Parser;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/parser/Parser",
            "<TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/gdata/util/parser/Parser;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/gdata/util/parser/Repeat;->subject:Lcom/google/gdata/util/parser/Parser;

    .line 73
    iput p2, p0, Lcom/google/gdata/util/parser/Repeat;->min:I

    .line 74
    iput p3, p0, Lcom/google/gdata/util/parser/Repeat;->max:I

    .line 75
    return-void
.end method


# virtual methods
.method public parse([CIILjava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CIITT;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 87
    move v1, v0

    .line 89
    :goto_0
    iget v3, p0, Lcom/google/gdata/util/parser/Repeat;->max:I

    if-eq v0, v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/google/gdata/util/parser/Repeat;->subject:Lcom/google/gdata/util/parser/Parser;

    add-int v4, p2, v1

    invoke-virtual {v3, p1, v4, p3, p4}, Lcom/google/gdata/util/parser/Parser;->parse([CIILjava/lang/Object;)I

    move-result v3

    .line 92
    if-nez v3, :cond_1

    .line 105
    :cond_0
    :goto_1
    return v1

    .line 95
    :cond_1
    if-ne v3, v2, :cond_2

    .line 96
    iget v3, p0, Lcom/google/gdata/util/parser/Repeat;->min:I

    if-ge v0, v3, :cond_0

    move v1, v2

    .line 97
    goto :goto_1

    .line 102
    :cond_2
    add-int/2addr v1, v3

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
