.class public Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;
.super Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;
.source "BehanceSDKStateDTO.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_STATES_ID:Ljava/lang/String; = "ALL_STATES_ID"

.field public static final ALL_STATES_NAME:Ljava/lang/String; = "All States"

.field private static final serialVersionUID:J = 0x30c12cff3e2f4a5aL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;)I
    .locals 2

    .prologue
    .line 38
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    invoke-virtual {p0, p1}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->compareTo(Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
