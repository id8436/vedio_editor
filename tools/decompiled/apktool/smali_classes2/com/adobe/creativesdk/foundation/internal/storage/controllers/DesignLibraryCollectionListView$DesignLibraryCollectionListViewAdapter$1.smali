.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$1;
.super Ljava/lang/Object;
.source "DesignLibraryCollectionListView.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter$1;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryCollectionListView$DesignLibraryCollectionListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 429
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;->getNameOrIdForDisplay(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Ljava/lang/String;

    move-result-object v0

    .line 430
    check-cast p2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;->getNameOrIdForDisplay(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
