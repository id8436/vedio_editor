.class public abstract Lcom/google/gdata/wireformats/input/AbstractParser;
.super Ljava/lang/Object;
.source "AbstractParser.java"

# interfaces
.implements Lcom/google/gdata/wireformats/input/InputParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/gdata/wireformats/input/InputParser",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final altFormat:Lcom/google/gdata/wireformats/AltFormat;

.field protected final resultType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/wireformats/AltFormat;",
            "Ljava/lang/Class",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string/jumbo v0, "altFormat"

    invoke-static {p1, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string/jumbo v0, "resultType"

    invoke-static {p2, v0}, Lcom/google/gdata/util/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/google/gdata/wireformats/input/AbstractParser;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    .line 48
    iput-object p2, p0, Lcom/google/gdata/wireformats/input/AbstractParser;->resultType:Ljava/lang/Class;

    .line 49
    return-void
.end method


# virtual methods
.method protected createResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/wireformats/ContentCreationException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/gdata/wireformats/input/AbstractParser;->resultType:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/google/gdata/wireformats/input/AbstractParser;->createResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected createResult(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:TT;>(",
            "Ljava/lang/Class",
            "<TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/wireformats/ContentCreationException;
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can\'t create parse target"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 90
    :catch_1
    move-exception v0

    .line 91
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can\'t create parse target"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAltFormat()Lcom/google/gdata/wireformats/AltFormat;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/gdata/wireformats/input/AbstractParser;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    return-object v0
.end method

.method public getResultType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/gdata/wireformats/input/AbstractParser;->resultType:Ljava/lang/Class;

    return-object v0
.end method
