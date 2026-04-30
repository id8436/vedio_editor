.class public Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Builder;
.super Ljava/lang/Object;
.source "FoldersContainingPaperDoc.java"


# instance fields
.field protected folderSharingPolicyType:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

.field protected folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/Folder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object v0, p0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Builder;->folderSharingPolicyType:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    .line 100
    iput-object v0, p0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Builder;->folders:Ljava/util/List;

    .line 101
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;
    .locals 3

    .prologue
    .line 146
    new-instance v0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Builder;->folderSharingPolicyType:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Builder;->folders:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;-><init>(Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;Ljava/util/List;)V

    return-object v0
.end method

.method public withFolderSharingPolicyType(Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;)Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Builder;
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Builder;->folderSharingPolicyType:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    .line 113
    return-object p0
.end method

.method public withFolders(Ljava/util/List;)Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/Folder;",
            ">;)",
            "Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Builder;"
        }
    .end annotation

    .prologue
    .line 128
    if-eqz p1, :cond_1

    .line 129
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/Folder;

    .line 130
    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'folders\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Builder;->folders:Ljava/util/List;

    .line 136
    return-object p0
.end method
