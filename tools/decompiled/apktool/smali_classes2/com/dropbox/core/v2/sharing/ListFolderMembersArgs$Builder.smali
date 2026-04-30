.class public Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;
.super Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;
.source "ListFolderMembersArgs.java"


# instance fields
.field protected final sharedFolderId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;-><init>()V

    .line 121
    if-nez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Required value for \'sharedFolderId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    const-string/jumbo v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;->sharedFolderId:Ljava/lang/String;

    .line 128
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;
    .locals 6

    .prologue
    .line 177
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;->sharedFolderId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;->actions:Ljava/util/List;

    iget-wide v4, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;->limit:J

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;-><init>(Ljava/lang/String;Ljava/util/List;J)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;->build()Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs;

    move-result-object v0

    return-object v0
.end method

.method public withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;"
        }
    .end annotation

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;->withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;

    .line 146
    return-object p0
.end method

.method public bridge synthetic withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;->withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;
    .locals 0

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;->withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;

    .line 167
    return-object p0
.end method

.method public bridge synthetic withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;->withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/ListFolderMembersArgs$Builder;

    move-result-object v0

    return-object v0
.end method
