.class Lcom/adobe/premiereclip/library/GeneralLibraryManager$ObservableWrapper;
.super Ljava/util/Observable;
.source "GeneralLibraryManager.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/library/GeneralLibraryManager;


# direct methods
.method private constructor <init>(Lcom/adobe/premiereclip/library/GeneralLibraryManager;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/adobe/premiereclip/library/GeneralLibraryManager$ObservableWrapper;->this$0:Lcom/adobe/premiereclip/library/GeneralLibraryManager;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/premiereclip/library/GeneralLibraryManager;Lcom/adobe/premiereclip/library/GeneralLibraryManager$1;)V
    .locals 0

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/adobe/premiereclip/library/GeneralLibraryManager$ObservableWrapper;-><init>(Lcom/adobe/premiereclip/library/GeneralLibraryManager;)V

    return-void
.end method


# virtual methods
.method public markChanged()V
    .locals 0

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/GeneralLibraryManager$ObservableWrapper;->setChanged()V

    .line 565
    return-void
.end method
