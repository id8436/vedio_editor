.class Lcom/adobe/premiereclip/library/ClipLibraryManager$ObservableWrapper;
.super Ljava/util/Observable;
.source "ClipLibraryManager.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/library/ClipLibraryManager;


# direct methods
.method private constructor <init>(Lcom/adobe/premiereclip/library/ClipLibraryManager;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/adobe/premiereclip/library/ClipLibraryManager$ObservableWrapper;->this$0:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/premiereclip/library/ClipLibraryManager;Lcom/adobe/premiereclip/library/ClipLibraryManager$1;)V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/library/ClipLibraryManager$ObservableWrapper;-><init>(Lcom/adobe/premiereclip/library/ClipLibraryManager;)V

    return-void
.end method


# virtual methods
.method public markChanged()V
    .locals 0

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/ClipLibraryManager$ObservableWrapper;->setChanged()V

    .line 596
    return-void
.end method
