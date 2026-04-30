.class public abstract Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$BaseCellHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AdobeDesignLibraryItemsCellHolders.java"


# instance fields
.field private libraryElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getLibraryElement()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$BaseCellHolder;->libraryElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    return-object v0
.end method

.method public setDisabled(Z)V
    .locals 2

    .prologue
    .line 47
    iget-object v1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$BaseCellHolder;->itemView:Landroid/view/View;

    if-eqz p1, :cond_0

    const v0, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 48
    return-void

    .line 47
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public setLibraryElement(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/designlibrary/AdobeDesignLibraryItemsCellHolders$BaseCellHolder;->libraryElement:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    .line 42
    return-void
.end method
