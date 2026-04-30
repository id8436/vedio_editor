.class public final Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;
.super Ljava/lang/Object;
.source "JsonReader.java"


# instance fields
.field private fields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->fields:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 430
    iget-object v0, p0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->fields:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "already called build(); can\'t call add() anymore"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->fields:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 432
    if-eq p2, v0, :cond_1

    .line 433
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "expectedIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", actual = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->fields:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 436
    if-eqz v0, :cond_2

    .line 437
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "duplicate field name: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_2
    return-void
.end method

.method public build()Lcom/dropbox/core/json/JsonReader$FieldMapping;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 443
    iget-object v0, p0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->fields:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "already called build(); can\'t call build() again"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->fields:Ljava/util/HashMap;

    .line 445
    iput-object v2, p0, Lcom/dropbox/core/json/JsonReader$FieldMapping$Builder;->fields:Ljava/util/HashMap;

    .line 446
    new-instance v1, Lcom/dropbox/core/json/JsonReader$FieldMapping;

    invoke-direct {v1, v0, v2}, Lcom/dropbox/core/json/JsonReader$FieldMapping;-><init>(Ljava/util/HashMap;Lcom/dropbox/core/json/JsonReader$1;)V

    return-object v1
.end method
