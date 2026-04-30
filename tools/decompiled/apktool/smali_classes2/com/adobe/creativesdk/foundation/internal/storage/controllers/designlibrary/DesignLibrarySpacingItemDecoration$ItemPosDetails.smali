.class public Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration$ItemPosDetails;
.super Ljava/lang/Object;
.source "DesignLibrarySpacingItemDecoration.java"


# instance fields
.field private itemPosInRow:I

.field private numColumnsInRow:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemPosInRow()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration$ItemPosDetails;->itemPosInRow:I

    return v0
.end method

.method public getNumColumnsInRow()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration$ItemPosDetails;->numColumnsInRow:I

    return v0
.end method

.method public setItemPosInRow(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration$ItemPosDetails;->itemPosInRow:I

    .line 79
    return-void
.end method

.method public setNumColumnsInRow(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/DesignLibrarySpacingItemDecoration$ItemPosDetails;->numColumnsInRow:I

    .line 71
    return-void
.end method
