.class final Lcom/google/common/io/CharStreams$1;
.super Ljava/lang/Object;
.source "CharStreams.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/google/common/io/InputSupplier",
        "<+",
        "Ljava/io/Reader;",
        ">;",
        "Lcom/google/common/io/CharSource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/CharSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/Reader;",
            ">;)",
            "Lcom/google/common/io/CharSource;"
        }
    .end annotation

    .prologue
    .line 378
    invoke-static {p1}, Lcom/google/common/io/CharStreams;->asCharSource(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/CharSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 375
    check-cast p1, Lcom/google/common/io/InputSupplier;

    invoke-virtual {p0, p1}, Lcom/google/common/io/CharStreams$1;->apply(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/CharSource;

    move-result-object v0

    return-object v0
.end method
