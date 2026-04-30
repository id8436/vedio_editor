.class public Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PopUpLibraryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static libraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;


# instance fields
.field private bgActiveColor:I

.field private bgColor:I

.field private clickListener:Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryClickListener;

.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getSharedInstance()Lcom/adobe/premiereclip/library/ClipLibraryManager;

    move-result-object v0

    sput-object v0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->libraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->context:Landroid/content/Context;

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    const v1, 0x7f1101c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->bgColor:I

    .line 54
    const v1, 0x7f110193

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->bgActiveColor:I

    .line 55
    return-void
.end method

.method static synthetic access$300(Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;)Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryClickListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->clickListener:Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryClickListener;

    return-object v0
.end method

.method private getFormattedString(II)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 140
    if-ne p1, v2, :cond_0

    .line 141
    iget-object v0, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0a04ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0a0431

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addClipDefaultsView(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 85
    if-nez p4, :cond_0

    .line 86
    sget-object v0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->libraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->isSelectedDefaultLooks()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget v0, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->bgActiveColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    :goto_0
    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0a0422

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->getClipDefaultsInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_0
    return-void

    .line 90
    :cond_1
    iget v0, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->bgColor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public addLibraryExtraView(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 98
    if-lez p4, :cond_0

    .line 99
    add-int/lit8 v1, p4, -0x1

    .line 100
    sget-object v0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->libraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getSortedLibraries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    .line 102
    if-eqz v0, :cond_0

    .line 103
    const-string/jumbo v2, "Looks"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "library added : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->libraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v4, v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getLibraryName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v2, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->libraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getCurrentLibrary()Lcom/adobe/creativesdk/foundation/storage/AdobeLibraryComposite;

    move-result-object v2

    if-ne v0, v2, :cond_1

    sget-object v2, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->libraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v2}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->isSelectedDefaultLooks()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    iget v2, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->bgActiveColor:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 110
    :goto_0
    check-cast p2, Landroid/widget/TextView;

    sget-object v2, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->libraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v2, v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getLibraryName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->getLibraryInfo(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    return-void

    .line 108
    :cond_1
    iget v2, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->bgColor:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public getClipDefaultsInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/adobe/premiereclip/looks/LocalLooks;->size()I

    move-result v0

    .line 127
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->getFormattedString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->libraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getLibraries()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->libraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getLibraries()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLibraryInfo(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    sget-object v0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->libraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->getSortedLibraries()Ljava/util/ArrayList;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 119
    :goto_0
    sget-object v1, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->libraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->countAllElementsInLibrary(Ljava/lang/Object;)I

    move-result v1

    .line 120
    sget-object v2, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->libraryManager:Lcom/adobe/premiereclip/library/ClipLibraryManager;

    invoke-virtual {v2, v0}, Lcom/adobe/premiereclip/library/ClipLibraryManager;->countLooksInLibrary(Ljava/lang/Object;)I

    move-result v0

    .line 121
    sub-int/2addr v1, v0

    .line 122
    invoke-direct {p0, v0, v1}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->getFormattedString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->onBindViewHolder(Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;I)V
    .locals 3

    .prologue
    .line 71
    if-nez p2, :cond_0

    .line 72
    invoke-static {p1}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;->access$000(Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;->access$100(Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;->access$200(Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->addClipDefaultsView(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-static {p1}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;->access$000(Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;->access$100(Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;->access$200(Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->addLibraryExtraView(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040177

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 64
    new-instance v1, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;-><init>(Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;Landroid/view/View;)V

    .line 65
    invoke-static {v1}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;->access$000(Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 66
    return-object v1
.end method

.method public setLibraryClickListener(Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryClickListener;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->clickListener:Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryClickListener;

    .line 59
    return-void
.end method
