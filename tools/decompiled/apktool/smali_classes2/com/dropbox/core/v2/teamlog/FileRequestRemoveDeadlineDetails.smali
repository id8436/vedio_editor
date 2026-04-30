.class public Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails;
.super Ljava/lang/Object;
.source "FileRequestRemoveDeadlineDetails.java"


# instance fields
.field protected final requestTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails;->requestTitle:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 63
    if-ne p1, p0, :cond_1

    move v0, v1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    check-cast p1, Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails;

    .line 72
    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails;->requestTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails;->requestTitle:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails;->requestTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails;->requestTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails;->requestTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getRequestTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails;->requestTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails;->requestTitle:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 58
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/FileRequestRemoveDeadlineDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
