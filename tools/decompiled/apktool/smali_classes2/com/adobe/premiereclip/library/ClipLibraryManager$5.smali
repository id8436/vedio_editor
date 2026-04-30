.class Lcom/adobe/premiereclip/library/ClipLibraryManager$5;
.super Ljava/lang/Object;
.source "ClipLibraryManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/library/ClipLibraryManager;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/library/ClipLibraryManager;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$5;->this$0:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)I
    .locals 4

    .prologue
    .line 409
    invoke-virtual {p1}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getModified()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;->getModified()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 410
    const/4 v0, -0x1

    .line 412
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 406
    check-cast p1, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    check-cast p2, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/library/ClipLibraryManager$5;->compare(Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;)I

    move-result v0

    return v0
.end method
