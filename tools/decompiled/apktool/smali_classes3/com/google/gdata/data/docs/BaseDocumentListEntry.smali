.class public Lcom/google/gdata/data/docs/BaseDocumentListEntry;
.super Lcom/google/gdata/data/docs/DocumentListEntry;
.source "BaseDocumentListEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gdata/data/docs/DocumentListEntry;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/gdata/data/docs/DocumentListEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 45
    return-void
.end method
