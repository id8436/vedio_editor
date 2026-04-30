.class Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4$1;
.super Ljava/lang/Object;
.source "AdobeLibraryManager.java"

# interfaces
.implements Lcom/adobe/creativesdk/foundation/adobeinternal/imageservice/IAdobeLibraryMergerCallback;


# instance fields
.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4;

.field final synthetic val$elementsToSkip:Ljava/util/List;

.field final synthetic val$reusableDiff:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 872
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4$1;->this$1:Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4;

    iput-object p2, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4$1;->val$elementsToSkip:Ljava/util/List;

    iput-object p3, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4$1;->val$reusableDiff:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onElementAdded(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4$1;->val$elementsToSkip:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 876
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4$1;->val$reusableDiff:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onElementDeleted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 891
    const/4 v0, 0x1

    return v0
.end method

.method public onElementModified(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4$1;->val$elementsToSkip:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 884
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryManager$4$1;->val$reusableDiff:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
