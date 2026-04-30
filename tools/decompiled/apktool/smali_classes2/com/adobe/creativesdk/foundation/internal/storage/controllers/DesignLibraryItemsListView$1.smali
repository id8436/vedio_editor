.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$1;
.super Ljava/lang/Object;
.source "DesignLibraryItemsListView.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView$1;->this$0:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/DesignLibraryItemsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 283
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-static {p1}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;->getNameOrIdForDisplay(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Ljava/lang/String;

    move-result-object v0

    .line 284
    check-cast p2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;

    invoke-static {p2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/library/AdobeDesignLibraryUtilsInternal;->getNameOrIdForDisplay(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryElement;)Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
