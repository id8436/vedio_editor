.class final Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;
.super Ljava/lang/Object;
.source "ElementCreatorImpl.java"


# instance fields
.field final action:Lcom/google/gdata/model/ElementCreatorImpl$Action;

.field final key:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gdata/model/AttributeKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 687
    sget-object v0, Lcom/google/gdata/model/ElementCreatorImpl$Action;->REPLACE:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    invoke-direct {p0, p1, v0}, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;-><init>(Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/ElementCreatorImpl$Action;)V

    .line 688
    return-void
.end method

.method constructor <init>(Lcom/google/gdata/model/AttributeKey;Lcom/google/gdata/model/ElementCreatorImpl$Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;",
            "Lcom/google/gdata/model/ElementCreatorImpl$Action;",
            ")V"
        }
    .end annotation

    .prologue
    .line 690
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 691
    iput-object p1, p0, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;->key:Lcom/google/gdata/model/AttributeKey;

    .line 692
    iput-object p2, p0, Lcom/google/gdata/model/ElementCreatorImpl$AttributeInfo;->action:Lcom/google/gdata/model/ElementCreatorImpl$Action;

    .line 693
    return-void
.end method
