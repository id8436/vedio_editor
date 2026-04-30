.class public Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;
.super Landroid/support/v4/app/Fragment;
.source "BehanceSDKEditProfileHeadlessFragment.java"

# interfaces
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKEditProfileAsyncTaskListener;
.implements Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetUserProfileAsyncTaskListener;


# instance fields
.field private callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment$Callbacks;

.field private city:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

.field private company:Ljava/lang/String;

.field private country:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

.field private editProfileAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKEditProfileAsyncTask;

.field private editProfileTaskInProgress:Z

.field private firstName:Ljava/lang/String;

.field private getUserProfileAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;

.field private getUserProfileTaskInProgress:Z

.field private imageBitmap:Landroid/graphics/Bitmap;

.field private imageModule:Lcom/behance/sdk/project/modules/ImageModule;

.field private lastName:Ljava/lang/String;

.field private occupation:Ljava/lang/String;

.field private originalImageUrl:Ljava/lang/String;

.field private state:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

.field private website:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getUserProfileTaskInProgress:Z

    .line 32
    iput-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->editProfileTaskInProgress:Z

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setRetainInstance(Z)V

    .line 120
    return-void
.end method

.method private applyParamChanges()Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;-><init>()V

    .line 154
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->firstName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->setFirstName(Ljava/lang/String;)V

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->lastName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->setLastName(Ljava/lang/String;)V

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->occupation:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->occupation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->setOccupation(Ljava/lang/String;)V

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->company:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 161
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->company:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->setCompany(Ljava/lang/String;)V

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->website:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 163
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->website:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->setWebsite(Ljava/lang/String;)V

    .line 164
    :cond_4
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->country:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    if-eqz v1, :cond_5

    .line 165
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->country:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->setCountry(Ljava/lang/String;)V

    .line 166
    :cond_5
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->state:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    if-eqz v1, :cond_6

    .line 167
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->state:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->setState(Ljava/lang/String;)V

    .line 168
    :cond_6
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->city:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    if-eqz v1, :cond_7

    .line 169
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->city:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->setCity(Ljava/lang/String;)V

    .line 170
    :cond_7
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->imageModule:Lcom/behance/sdk/project/modules/ImageModule;

    if-eqz v1, :cond_8

    .line 171
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->imageModule:Lcom/behance/sdk/project/modules/ImageModule;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->setImage(Lcom/behance/sdk/project/modules/ImageModule;)V

    .line 172
    :cond_8
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->imageBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_9

    .line 173
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->setProfileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 174
    :cond_9
    return-object v0
.end method


# virtual methods
.method public getCity()Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->city:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->company:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->country:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/behance/sdk/project/modules/ImageModule;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->imageModule:Lcom/behance/sdk/project/modules/ImageModule;

    return-object v0
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->imageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getOccupation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->occupation:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->originalImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->state:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->website:Ljava/lang/String;

    return-object v0
.end method

.method public isEditProfileTaskInProgress()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->editProfileTaskInProgress:Z

    return v0
.end method

.method public isGetUserProfileTaskInProgress()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getUserProfileTaskInProgress:Z

    return v0
.end method

.method public isValidLocation()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 271
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->country:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WORLD_WIDE_COUNTRY_ID"

    iget-object v2, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->country:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    invoke-virtual {v2}, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    :cond_0
    :goto_0
    return v0

    .line 274
    :cond_1
    sget-object v1, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->COUNTRY_CODES_FOR_LOAD_STATES:Ljava/util/List;

    iget-object v2, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->country:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    invoke-virtual {v2}, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->state:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->state:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "ALL_STATES_ID"

    iget-object v2, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->state:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    .line 275
    invoke-virtual {v2}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 278
    :cond_3
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->city:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ALL_CITIES_ID"

    iget-object v2, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->city:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    invoke-virtual {v2}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->city:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadUserDetailsFromServer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 178
    invoke-virtual {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->isGetUserProfileTaskInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getUserProfileAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p0, v3}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setGetUserProfileTaskInProgress(Z)V

    .line 181
    new-instance v0, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;

    invoke-direct {v0}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;-><init>()V

    .line 182
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;->getUserCredentials()Lcom/behance/sdk/IBehanceSDKUserCredentials;

    move-result-object v1

    .line 184
    if-eqz v1, :cond_1

    .line 185
    invoke-interface {v1}, Lcom/behance/sdk/IBehanceSDKUserCredentials;->getUserAdobeAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;->setUserId(Ljava/lang/String;)V

    .line 186
    invoke-interface {v1}, Lcom/behance/sdk/IBehanceSDKUserCredentials;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;->setClientId(Ljava/lang/String;)V

    .line 193
    :goto_0
    new-instance v1, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;

    invoke-direct {v1, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKGetUserProfileAsyncTaskListener;)V

    iput-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getUserProfileAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;

    .line 194
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getUserProfileAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;

    new-array v2, v3, [Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKGetUserProfileAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 196
    :cond_0
    return-void

    .line 189
    :cond_1
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;->setUserId(Ljava/lang/String;)V

    .line 190
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;->setClientId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEditProfileTaskFailure(Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;)V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setEditProfileTaskInProgress(Z)V

    .line 87
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment$Callbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment$Callbacks;->onEditProfileFailure(Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;)V

    .line 88
    return-void
.end method

.method public onEditProfileTaskSuccess(Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setEditProfileTaskInProgress(Z)V

    .line 81
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment$Callbacks;

    invoke-interface {v0, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment$Callbacks;->onEditProfileSuccess(Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;)V

    .line 82
    return-void
.end method

.method public onGetUserProfileFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;)V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setGetUserProfileTaskInProgress(Z)V

    .line 75
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment$Callbacks;

    invoke-interface {v0, p1, p2}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment$Callbacks;->onGetUserProfileFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;)V

    .line 76
    return-void
.end method

.method public onGetUserProfileSuccess(Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;)V
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKGetUserProfileTaskResult;->getBehanceUserProfile()Lcom/behance/sdk/BehanceSDKUserProfile;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKUserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKUserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKUserProfile;->getLastName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKUserProfile;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    :cond_0
    invoke-static {}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getSharedAuthManagerRestricted()Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/adobeinternal/auth/AdobeUXAuthManagerRestricted;->getUserProfile()Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setFirstName(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/auth/AdobeAuthUserProfile;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setLastName(Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment$Callbacks;

    if-eqz v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment$Callbacks;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment$Callbacks;->setProfileEdited(Z)V

    .line 61
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKUserProfile;->getOccupation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setOccupation(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKUserProfile;->getCompany()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setCompany(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKUserProfile;->getWebsite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setWebsite(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKUserProfile;->getCountry()Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setCountry(Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;)V

    .line 65
    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKUserProfile;->getState()Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setState(Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;)V

    .line 66
    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKUserProfile;->getCity()Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setCity(Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;)V

    .line 67
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setGetUserProfileTaskInProgress(Z)V

    .line 68
    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKUserProfile;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setOriginalImageUrl(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment$Callbacks;

    invoke-interface {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment$Callbacks;->onGetUserProfileSuccess()V

    .line 70
    return-void

    .line 58
    :cond_2
    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKUserProfile;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setFirstName(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKUserProfile;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setLastName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveUserPortfolioChanges()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 139
    iget-boolean v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->editProfileTaskInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->editProfileAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKEditProfileAsyncTask;

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setEditProfileTaskInProgress(Z)V

    .line 141
    new-instance v0, Lcom/behance/sdk/asynctasks/BehanceSDKEditProfileAsyncTask;

    invoke-direct {v0, p0}, Lcom/behance/sdk/asynctasks/BehanceSDKEditProfileAsyncTask;-><init>(Lcom/behance/sdk/asynctask/listeners/IBehanceSDKEditProfileAsyncTaskListener;)V

    iput-object v0, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->editProfileAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKEditProfileAsyncTask;

    .line 142
    invoke-direct {p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->applyParamChanges()Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;

    move-result-object v0

    .line 144
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;->getUserCredentials()Lcom/behance/sdk/IBehanceSDKUserCredentials;

    move-result-object v1

    .line 146
    invoke-interface {v1}, Lcom/behance/sdk/IBehanceSDKUserCredentials;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;->setClientId(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->editProfileAsyncTask:Lcom/behance/sdk/asynctasks/BehanceSDKEditProfileAsyncTask;

    new-array v2, v2, [Lcom/behance/sdk/asynctask/params/BehanceSDKEditProfileAsyncTaskParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/behance/sdk/asynctasks/BehanceSDKEditProfileAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 150
    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment$Callbacks;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->callbacks:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment$Callbacks;

    .line 116
    return-void
.end method

.method public setCity(Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->city:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    .line 256
    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->company:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setCountry(Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->country:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    .line 240
    return-void
.end method

.method public setEditProfileTaskInProgress(Z)V
    .locals 0

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->editProfileTaskInProgress:Z

    .line 136
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->firstName:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setGetUserProfileTaskInProgress(Z)V
    .locals 0

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getUserProfileTaskInProgress:Z

    .line 128
    return-void
.end method

.method public setImage(Lcom/behance/sdk/project/modules/ImageModule;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->imageModule:Lcom/behance/sdk/project/modules/ImageModule;

    .line 264
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->imageBitmap:Landroid/graphics/Bitmap;

    .line 100
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->lastName:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setOccupation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->occupation:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setOriginalImageUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->originalImageUrl:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setState(Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->state:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    .line 248
    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->website:Ljava/lang/String;

    .line 232
    return-void
.end method
