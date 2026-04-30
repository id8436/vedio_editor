.class public Lcom/adobe/premiereclip/dcx/BasicDCXModel;
.super Ljava/lang/Object;
.source "BasicDCXModel.java"

# interfaces
.implements Lcom/adobe/sync/SyncController$IDCXModelInterface;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/adobe/sync/SyncController$IDCXModelInterface;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/adobe/premiereclip/dcx/BasicDCXModel;",
        ">;"
    }
.end annotation


# static fields
.field private static formatter:Ljava/text/SimpleDateFormat;


# instance fields
.field private mCreationTS:Ljava/util/Date;

.field private mDirtyFlag:Z

.field private mDocumentID:Ljava/lang/String;

.field private mDocumentPath:Ljava/lang/String;

.field private mDocumentTitle:Ljava/lang/String;

.field private mLastModifiedTS:Ljava/util/Date;

.field private mRenditionPath:Ljava/lang/String;

.field private projectMode:Ljava/lang/String;

.field private projectType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->formatter:Ljava/text/SimpleDateFormat;

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->formatter:Ljava/text/SimpleDateFormat;

    .line 36
    sget-object v0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->formatter:Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mCreationTS:Ljava/util/Date;

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mLastModifiedTS:Ljava/util/Date;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mDirtyFlag:Z

    .line 57
    const-string/jumbo v0, "freeform"

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->projectMode:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/adobe/premiereclip/dcx/BasicDCXModel;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getDocumentID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mDocumentID:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getDocumentPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mDocumentPath:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getDocumentTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mDocumentTitle:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getCreationTS()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mCreationTS:Ljava/util/Date;

    .line 65
    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getLastModifiedTS()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mLastModifiedTS:Ljava/util/Date;

    .line 66
    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getRenditionPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mRenditionPath:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->isDirty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mDirtyFlag:Z

    .line 68
    iget-object v0, p1, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->projectMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->projectMode:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getProjectType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->projectType:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/adobe/premiereclip/dcx/BasicDCXModel;)I
    .locals 2

    .prologue
    .line 178
    .line 179
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getCreationTS()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getCreationTS()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 30
    check-cast p1, Lcom/adobe/premiereclip/dcx/BasicDCXModel;

    invoke-virtual {p0, p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->compareTo(Lcom/adobe/premiereclip/dcx/BasicDCXModel;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 168
    instance-of v0, p1, Lcom/adobe/premiereclip/dcx/BasicDCXModel;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getDocumentPath()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/adobe/premiereclip/dcx/BasicDCXModel;

    invoke-virtual {p1}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getDocumentPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCreationTS()Ljava/util/Date;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mCreationTS:Ljava/util/Date;

    return-object v0
.end method

.method public getDocumentID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mDocumentID:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mDocumentPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mDocumentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedTS()Ljava/util/Date;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mLastModifiedTS:Ljava/util/Date;

    return-object v0
.end method

.method public getProjectMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->projectMode:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->projectType:Ljava/lang/String;

    return-object v0
.end method

.method public getRenditionPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mRenditionPath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getDocumentPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->getDocumentPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mDirtyFlag:Z

    return v0
.end method

.method setAsDirty(Z)V
    .locals 0

    .prologue
    .line 154
    iput-boolean p1, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mDirtyFlag:Z

    .line 155
    return-void
.end method

.method public setCreationTS(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mCreationTS:Ljava/util/Date;

    .line 114
    return-void
.end method

.method public setDocumentID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mDocumentID:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setDocumentPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mDocumentPath:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setDocumentTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mDocumentTitle:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setLastModifiedTS(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mLastModifiedTS:Ljava/util/Date;

    .line 123
    return-void
.end method

.method public setProjectMode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->projectMode:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setProjectType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->projectType:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setRenditionPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/adobe/premiereclip/dcx/BasicDCXModel;->mRenditionPath:Ljava/lang/String;

    .line 147
    return-void
.end method
