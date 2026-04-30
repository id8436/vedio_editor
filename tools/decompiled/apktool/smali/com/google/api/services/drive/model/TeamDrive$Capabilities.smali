.class public final Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
.super Lcom/google/api/client/json/GenericJson;
.source "TeamDrive.java"


# instance fields
.field private canAddChildren:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private canChangeTeamDriveBackground:Ljava/lang/Boolean;
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

.field private canDeleteTeamDrive:Ljava/lang/Boolean;
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

.field private canManageMembers:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private canReadRevisions:Ljava/lang/Boolean;
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

.field private canRenameTeamDrive:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private canShare:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->clone()Lcom/google/api/services/drive/model/TeamDrive$Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->clone()Lcom/google/api/services/drive/model/TeamDrive$Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .locals 1

    .prologue
    .line 779
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;

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
    .line 428
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->clone()Lcom/google/api/services/drive/model/TeamDrive$Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public getCanAddChildren()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canAddChildren:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanChangeTeamDriveBackground()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canChangeTeamDriveBackground:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanComment()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canComment:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanCopy()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canCopy:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanDeleteTeamDrive()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canDeleteTeamDrive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanDownload()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canDownload:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanEdit()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canEdit:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanListChildren()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canListChildren:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanManageMembers()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canManageMembers:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanReadRevisions()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canReadRevisions:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanRemoveChildren()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canRemoveChildren:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanRename()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canRename:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanRenameTeamDrive()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canRenameTeamDrive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCanShare()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canShare:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/TeamDrive$Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/TeamDrive$Capabilities;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .locals 1

    .prologue
    .line 774
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;

    return-object v0
.end method

.method public setCanAddChildren(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canAddChildren:Ljava/lang/Boolean;

    .line 544
    return-object p0
.end method

.method public setCanChangeTeamDriveBackground(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .locals 0

    .prologue
    .line 560
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canChangeTeamDriveBackground:Ljava/lang/Boolean;

    .line 561
    return-object p0
.end method

.method public setCanComment(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .locals 0

    .prologue
    .line 577
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canComment:Ljava/lang/Boolean;

    .line 578
    return-object p0
.end method

.method public setCanCopy(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canCopy:Ljava/lang/Boolean;

    .line 595
    return-object p0
.end method

.method public setCanDeleteTeamDrive(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canDeleteTeamDrive:Ljava/lang/Boolean;

    .line 614
    return-object p0
.end method

.method public setCanDownload(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canDownload:Ljava/lang/Boolean;

    .line 631
    return-object p0
.end method

.method public setCanEdit(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canEdit:Ljava/lang/Boolean;

    .line 648
    return-object p0
.end method

.method public setCanListChildren(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canListChildren:Ljava/lang/Boolean;

    .line 665
    return-object p0
.end method

.method public setCanManageMembers(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canManageMembers:Ljava/lang/Boolean;

    .line 684
    return-object p0
.end method

.method public setCanReadRevisions(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canReadRevisions:Ljava/lang/Boolean;

    .line 701
    return-object p0
.end method

.method public setCanRemoveChildren(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canRemoveChildren:Ljava/lang/Boolean;

    .line 718
    return-object p0
.end method

.method public setCanRename(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canRename:Ljava/lang/Boolean;

    .line 735
    return-object p0
.end method

.method public setCanRenameTeamDrive(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canRenameTeamDrive:Ljava/lang/Boolean;

    .line 752
    return-object p0
.end method

.method public setCanShare(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/TeamDrive$Capabilities;
    .locals 0

    .prologue
    .line 768
    iput-object p1, p0, Lcom/google/api/services/drive/model/TeamDrive$Capabilities;->canShare:Ljava/lang/Boolean;

    .line 769
    return-object p0
.end method
