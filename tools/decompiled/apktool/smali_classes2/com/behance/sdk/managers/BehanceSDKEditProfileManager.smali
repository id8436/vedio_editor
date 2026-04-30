.class public Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;
.super Ljava/lang/Object;
.source "BehanceSDKEditProfileManager.java"


# static fields
.field private static final INSTANCE:Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;


# instance fields
.field private editProfileListener:Lcom/behance/sdk/IBehanceSDKEditProfileListener;

.field private userCredentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;

    invoke-direct {v0}, Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;-><init>()V

    sput-object v0, Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;->INSTANCE:Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;->INSTANCE:Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;

    return-object v0
.end method


# virtual methods
.method public getUserCredentials()Lcom/behance/sdk/IBehanceSDKUserCredentials;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;->userCredentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    return-object v0
.end method

.method public onEditProfileSuccess()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;->editProfileListener:Lcom/behance/sdk/IBehanceSDKEditProfileListener;

    invoke-interface {v0}, Lcom/behance/sdk/IBehanceSDKEditProfileListener;->onEditProfileSuccess()V

    .line 35
    return-void
.end method

.method public setEditProfileListener(Lcom/behance/sdk/IBehanceSDKEditProfileListener;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;->editProfileListener:Lcom/behance/sdk/IBehanceSDKEditProfileListener;

    .line 31
    return-void
.end method

.method public setUserCredentials(Lcom/behance/sdk/IBehanceSDKUserCredentials;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;->userCredentials:Lcom/behance/sdk/IBehanceSDKUserCredentials;

    .line 27
    return-void
.end method
