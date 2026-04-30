.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$1;
.super Ljava/lang/Object;
.source "DesignLibraryItemsListView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;)I
    .locals 2

    .prologue
    .line 639
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;->firstPosition:I

    iget v1, p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;->firstPosition:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;->firstPosition:I

    iget v1, p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;->firstPosition:I

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 636
    check-cast p1, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;

    check-cast p2, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$1;->compare(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$SimpleSectionedRecyclerViewAdapter$Section;)I

    move-result v0

    return v0
.end method
