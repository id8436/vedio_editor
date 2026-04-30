.class final Lcom/dropbox/core/util/Maybe$Nothing;
.super Lcom/dropbox/core/util/Maybe;
.source "Maybe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/util/Maybe",
        "<TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dropbox/core/util/Maybe;-><init>(Lcom/dropbox/core/util/Maybe$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/core/util/Maybe$1;)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/dropbox/core/util/Maybe$Nothing;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Lcom/dropbox/core/util/Maybe;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/util/Maybe",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 72
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 65
    return-object p1
.end method

.method public getJust()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "can\'t call getJust() on a Nothing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public isJust()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public isNothing()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "Nothing"

    return-object v0
.end method
