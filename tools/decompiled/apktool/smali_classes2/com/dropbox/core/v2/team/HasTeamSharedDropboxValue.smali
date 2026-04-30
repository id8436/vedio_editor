.class public final Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;
.super Ljava/lang/Object;
.source "HasTeamSharedDropboxValue.java"


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;

.field private hasTeamSharedDropboxValue:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;->OTHER:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->withTag(Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;)Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->OTHER:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->hasTeamSharedDropboxValue:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static hasTeamSharedDropbox(Z)Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;->HAS_TEAM_SHARED_DROPBOX:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->withTagAndHasTeamSharedDropbox(Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;)Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;-><init>()V

    .line 78
    iput-object p1, v0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->_tag:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;

    .line 79
    return-object v0
.end method

.method private withTagAndHasTeamSharedDropbox(Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;Ljava/lang/Boolean;)Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;-><init>()V

    .line 91
    iput-object p1, v0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->_tag:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;

    .line 92
    iput-object p2, v0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->hasTeamSharedDropboxValue:Ljava/lang/Boolean;

    .line 93
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 181
    if-ne p1, p0, :cond_1

    move v1, v0

    .line 202
    :cond_0
    :goto_0
    return v1

    .line 184
    :cond_1
    if-eqz p1, :cond_0

    .line 187
    instance-of v2, p1, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    if-eqz v2, :cond_0

    .line 188
    check-cast p1, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    .line 189
    iget-object v2, p0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->_tag:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->_tag:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;

    if-ne v2, v3, :cond_0

    .line 192
    sget-object v2, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$1;->$SwitchMap$com$dropbox$core$v2$team$HasTeamSharedDropboxValue$Tag:[I

    iget-object v3, p0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->_tag:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;

    invoke-virtual {v3}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 194
    :pswitch_0
    iget-object v2, p0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->hasTeamSharedDropboxValue:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->hasTeamSharedDropboxValue:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_1
    move v1, v0

    .line 196
    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getHasTeamSharedDropboxValue()Z
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->_tag:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;->HAS_TEAM_SHARED_DROPBOX:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;

    if-eq v0, v1, :cond_0

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid tag: required Tag.HAS_TEAM_SHARED_DROPBOX, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->_tag:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->hasTeamSharedDropboxValue:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 172
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->_tag:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->hasTeamSharedDropboxValue:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 176
    return v0
.end method

.method public isHasTeamSharedDropbox()Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->_tag:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;->HAS_TEAM_SHARED_DROPBOX:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->_tag:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;->OTHER:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->_tag:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 208
    sget-object v0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    sget-object v0, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
