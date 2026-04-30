.class public final Lcom/google/api/services/drive/model/File$Capabilities;
.super Lcom/google/api/client/json/GenericJson;
.source "File.java"


# instance fields
.field private canAddChildren:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private canChangeViewersCanCopyContent:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private canComment:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private canCopy:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private canDelete:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private canDownload:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private canEdit:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private canListChildren:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private canMoveItemIntoTeamDrive:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private canMoveTeamDriveItem:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private canReadRevisions:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private canReadTeamDrive:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private canRemoveChildren:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private canRename:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private canShare:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private canTrash:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private canUntrash:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1406
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 1406
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$Capabilities;->clone()Lcom/google/api/services/drive/model/File$Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 1406
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$Capabilities;->clone()Lcom/google/api/services/drive/model/File$Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 1

    .prologue
    .line 1853
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$Capabilities;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1406
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$Capabilities;->clone()Lcom/google/api/services/drive/model/File$Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public getCanAddChildren()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canAddChildren:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanChangeViewersCanCopyContent()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canChangeViewersCanCopyContent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanComment()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canComment:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanCopy()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canCopy:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanDelete()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canDelete:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanDownload()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canDownload:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanEdit()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canEdit:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanListChildren()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canListChildren:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanMoveItemIntoTeamDrive()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveItemIntoTeamDrive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanMoveTeamDriveItem()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveTeamDriveItem:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanReadRevisions()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canReadRevisions:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanReadTeamDrive()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canReadTeamDrive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanRemoveChildren()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1765
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canRemoveChildren:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanRename()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canRename:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanShare()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canShare:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanTrash()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canTrash:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanUntrash()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canUntrash:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 1406
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$Capabilities;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 1406
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$Capabilities;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 1

    .prologue
    .line 1848
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$Capabilities;

    return-object v0
.end method

.method public setCanAddChildren(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canAddChildren:Ljava/lang/Boolean;

    .line 1553
    return-object p0
.end method

.method public setCanChangeViewersCanCopyContent(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canChangeViewersCanCopyContent:Ljava/lang/Boolean;

    .line 1570
    return-object p0
.end method

.method public setCanComment(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .prologue
    .line 1586
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canComment:Ljava/lang/Boolean;

    .line 1587
    return-object p0
.end method

.method public setCanCopy(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .prologue
    .line 1605
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canCopy:Ljava/lang/Boolean;

    .line 1606
    return-object p0
.end method

.method public setCanDelete(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .prologue
    .line 1622
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canDelete:Ljava/lang/Boolean;

    .line 1623
    return-object p0
.end method

.method public setCanDownload(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .prologue
    .line 1639
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canDownload:Ljava/lang/Boolean;

    .line 1640
    return-object p0
.end method

.method public setCanEdit(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .prologue
    .line 1656
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canEdit:Ljava/lang/Boolean;

    .line 1657
    return-object p0
.end method

.method public setCanListChildren(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .prologue
    .line 1675
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canListChildren:Ljava/lang/Boolean;

    .line 1676
    return-object p0
.end method

.method public setCanMoveItemIntoTeamDrive(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .prologue
    .line 1694
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveItemIntoTeamDrive:Ljava/lang/Boolean;

    .line 1695
    return-object p0
.end method

.method public setCanMoveTeamDriveItem(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .prologue
    .line 1715
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canMoveTeamDriveItem:Ljava/lang/Boolean;

    .line 1716
    return-object p0
.end method

.method public setCanReadRevisions(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .prologue
    .line 1736
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canReadRevisions:Ljava/lang/Boolean;

    .line 1737
    return-object p0
.end method

.method public setCanReadTeamDrive(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .prologue
    .line 1755
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canReadTeamDrive:Ljava/lang/Boolean;

    .line 1756
    return-object p0
.end method

.method public setCanRemoveChildren(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .prologue
    .line 1774
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canRemoveChildren:Ljava/lang/Boolean;

    .line 1775
    return-object p0
.end method

.method public setCanRename(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .prologue
    .line 1791
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canRename:Ljava/lang/Boolean;

    .line 1792
    return-object p0
.end method

.method public setCanShare(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canShare:Ljava/lang/Boolean;

    .line 1809
    return-object p0
.end method

.method public setCanTrash(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .prologue
    .line 1825
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canTrash:Ljava/lang/Boolean;

    .line 1826
    return-object p0
.end method

.method public setCanUntrash(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Capabilities;
    .locals 0

    .prologue
    .line 1842
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Capabilities;->canUntrash:Ljava/lang/Boolean;

    .line 1843
    return-object p0
.end method
