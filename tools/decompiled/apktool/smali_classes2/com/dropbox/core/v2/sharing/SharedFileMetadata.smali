.class public Lcom/dropbox/core/v2/sharing/SharedFileMetadata;
.super Ljava/lang/Object;
.source "SharedFileMetadata.java"


# instance fields
.field protected final accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected final expectedLinkMetadata:Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;

.field protected final id:Ljava/lang/String;

.field protected final linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

.field protected final name:Ljava/lang/String;

.field protected final ownerDisplayNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final ownerTeam:Lcom/dropbox/core/v2/users/Team;

.field protected final parentSharedFolderId:Ljava/lang/String;

.field protected final pathDisplay:Ljava/lang/String;

.field protected final pathLower:Ljava/lang/String;

.field protected final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FilePermission;",
            ">;"
        }
    .end annotation
.end field

.field protected final policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

.field protected final previewUrl:Ljava/lang/String;

.field protected final timeInvited:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;)V
    .locals 15

    .prologue
    .line 165
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v14}, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;Ljava/util/List;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Date;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;Ljava/util/List;Lcom/dropbox/core/v2/users/Team;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Date;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/sharing/FolderPolicy;",
            "Ljava/lang/String;",
            "Lcom/dropbox/core/v2/sharing/AccessLevel;",
            "Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;",
            "Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/dropbox/core/v2/users/Team;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FilePermission;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p5, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'id\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'id\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    const-string/jumbo v0, "id:.*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'id\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->id:Ljava/lang/String;

    .line 106
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->expectedLinkMetadata:Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;

    .line 107
    iput-object p7, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .line 108
    if-nez p2, :cond_3

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'name\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->name:Ljava/lang/String;

    .line 112
    if-eqz p8, :cond_5

    .line 113
    invoke-interface {p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    if-nez v0, :cond_4

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'ownerDisplayNames\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_5
    iput-object p8, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerDisplayNames:Ljava/util/List;

    .line 120
    iput-object p9, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    .line 121
    if-eqz p10, :cond_6

    .line 122
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p10}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'parentSharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_6
    iput-object p10, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->parentSharedFolderId:Ljava/lang/String;

    .line 127
    iput-object p11, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathDisplay:Ljava/lang/String;

    .line 128
    iput-object p12, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathLower:Ljava/lang/String;

    .line 129
    if-eqz p13, :cond_8

    .line 130
    invoke-interface {p13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/FilePermission;

    .line 131
    if-nez v0, :cond_7

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "An item in list \'permissions\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_8
    iput-object p13, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->permissions:Ljava/util/List;

    .line 137
    if-nez p3, :cond_9

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'policy\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_9
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    .line 141
    if-nez p4, :cond_a

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'previewUrl\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_a
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->previewUrl:Ljava/lang/String;

    .line 145
    invoke-static/range {p14 .. p14}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->timeInvited:Ljava/util/Date;

    .line 146
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;
    .locals 1

    .prologue
    .line 328
    new-instance v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/sharing/FolderPolicy;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 593
    if-ne p1, p0, :cond_1

    .line 619
    :cond_0
    :goto_0
    return v0

    .line 596
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 597
    goto :goto_0

    .line 600
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 601
    check-cast p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;

    .line 602
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->id:Ljava/lang/String;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_3
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->name:Ljava/lang/String;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->name:Ljava/lang/String;

    .line 603
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_4
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    .line 604
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/FolderPolicy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_5
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->previewUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->previewUrl:Ljava/lang/String;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->previewUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->previewUrl:Ljava/lang/String;

    .line 605
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_6
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 606
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_7
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->expectedLinkMetadata:Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->expectedLinkMetadata:Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;

    if-eq v2, v3, :cond_8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->expectedLinkMetadata:Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->expectedLinkMetadata:Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->expectedLinkMetadata:Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;

    .line 607
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_8
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    .line 608
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_9
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerDisplayNames:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerDisplayNames:Ljava/util/List;

    if-eq v2, v3, :cond_a

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerDisplayNames:Ljava/util/List;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerDisplayNames:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerDisplayNames:Ljava/util/List;

    .line 609
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_a
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    .line 610
    invoke-virtual {v2, v3}, Lcom/dropbox/core/v2/users/Team;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_b
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->parentSharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eq v2, v3, :cond_c

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->parentSharedFolderId:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->parentSharedFolderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->parentSharedFolderId:Ljava/lang/String;

    .line 611
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_c
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathDisplay:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathDisplay:Ljava/lang/String;

    if-eq v2, v3, :cond_d

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathDisplay:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathDisplay:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathDisplay:Ljava/lang/String;

    .line 612
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_d
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathLower:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathLower:Ljava/lang/String;

    if-eq v2, v3, :cond_e

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathLower:Ljava/lang/String;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathLower:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathLower:Ljava/lang/String;

    .line 613
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_e
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->permissions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->permissions:Ljava/util/List;

    if-eq v2, v3, :cond_f

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->permissions:Ljava/util/List;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->permissions:Ljava/util/List;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->permissions:Ljava/util/List;

    .line 614
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_f
    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->timeInvited:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->timeInvited:Ljava/util/Date;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->timeInvited:Ljava/util/Date;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->timeInvited:Ljava/util/Date;

    iget-object v3, p1, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->timeInvited:Ljava/util/Date;

    .line 615
    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_10
    move v0, v1

    goto/16 :goto_0

    :cond_11
    move v0, v1

    .line 619
    goto/16 :goto_0
.end method

.method public getAccessType()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getExpectedLinkMetadata()Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->expectedLinkMetadata:Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkMetadata()Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerDisplayNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerDisplayNames:Ljava/util/List;

    return-object v0
.end method

.method public getOwnerTeam()Lcom/dropbox/core/v2/users/Team;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    return-object v0
.end method

.method public getParentSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->parentSharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPathDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getPathLower()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathLower:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/FilePermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getPolicy()Lcom/dropbox/core/v2/sharing/FolderPolicy;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    return-object v0
.end method

.method public getPreviewUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->previewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeInvited()Ljava/util/Date;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->timeInvited:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 572
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->id:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->expectedLinkMetadata:Lcom/dropbox/core/v2/sharing/ExpectedSharedContentLinkMetadata;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->linkMetadata:Lcom/dropbox/core/v2/sharing/SharedContentLinkMetadata;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerDisplayNames:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->ownerTeam:Lcom/dropbox/core/v2/users/Team;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->parentSharedFolderId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathDisplay:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->pathLower:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->permissions:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->policy:Lcom/dropbox/core/v2/sharing/FolderPolicy;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->previewUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata;->timeInvited:Ljava/util/Date;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 588
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 625
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 637
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFileMetadata$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
