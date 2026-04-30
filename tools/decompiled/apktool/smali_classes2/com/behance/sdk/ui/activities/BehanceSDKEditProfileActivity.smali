.class public Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BehanceSDKEditProfileActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment$Callbacks;
.implements Lcom/behance/sdk/listeners/IBehanceSDKGalleryPickerCallbacks;
.implements Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$Callbacks;


# static fields
.field private static final ACTION_REQUEST_CAMERA:I = 0x3ef

.field private static final ACTION_REQUEST_CC:I = 0x3ee

.field private static final ACTION_REQUEST_CROPPER:I = 0x3f0

.field private static final FRAGMENT_TAG_EDIT_PROFILE_LOCATION:Ljava/lang/String; = "FRAGMENT_TAG_EDIT_PROFILE_LOCATION"

.field private static final FRAGMENT_TAG_SELECT_IMAGE:Ljava/lang/String; = "FRAGMENT_TAG_EDIT_PROFILE_SELECT_IMAGE"

.field private static final HEADLESS_FRAGMENT_TAG_EDIT_PROFILE:Ljava/lang/String; = "EDIT_PROFILE_HEADLESS_FRAGMENT_TAG"

.field public static final INTENT_EXTRA_BOOLEAN_ENABLE_ALTERNATE_IMAGE_SELECTION_SOURCES:Ljava/lang/String; = "INTENT_EXTRA_BOOLEAN_ENABLE_ALTERNATE_IMAGE_SELECTION_SOURCES"

.field private static final SAVE_INSTANCE_STATE_KEY_IMAGE_CAPTURE_FILE_PATH:Ljava/lang/String; = "SAVE_INSTANCE_STATE_KEY_IMAGE_CAPTURE_FILE_PATH"

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private avatar:Landroid/widget/ImageView;

.field private behanceSDK:Lcom/behance/sdk/BehanceSDK;

.field private companyET:Landroid/widget/EditText;

.field private editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

.field private firstNameET:Landroid/widget/EditText;

.field private imageCaptureFilePath:Ljava/lang/String;

.field private isimageDialogLaunched:Ljava/lang/Boolean;

.field private lastNameET:Landroid/widget/EditText;

.field private location:Landroid/widget/TextView;

.field private occupationET:Landroid/widget/EditText;

.field private profileChanged:Z

.field private progressBar:Landroid/view/View;

.field private saveNavBtn:Landroid/widget/TextView;

.field private unsavedChangesAlertDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

.field private websiteET:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 89
    iput-boolean v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->profileChanged:Z

    .line 90
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    .line 92
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->isimageDialogLaunched:Ljava/lang/Boolean;

    return-void
.end method

.method private closeThisActivity()V
    .locals 0

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->finish()V

    .line 185
    return-void
.end method

.method private closeUnsavedChangesAlertDialog()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->unsavedChangesAlertDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->unsavedChangesAlertDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->dismiss()V

    .line 245
    :cond_0
    return-void
.end method

.method private displayNoInternetConnectivity()V
    .locals 2

    .prologue
    .line 179
    sget v0, Lcom/behance/sdk/R$string;->bsdk_add_wip_view_connection_error_msg:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 180
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->closeThisActivity()V

    .line 181
    return-void
.end method

.method private handleLocationClick()V
    .locals 3

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 249
    invoke-static {}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getInstance()Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;

    move-result-object v1

    .line 250
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 251
    invoke-direct {p0, v2}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->setSelectedLocation(Landroid/os/Bundle;)V

    .line 252
    invoke-virtual {v1, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->setArguments(Landroid/os/Bundle;)V

    .line 253
    invoke-virtual {v1, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->setCallbacks(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$Callbacks;)V

    .line 254
    const-string/jumbo v2, "FRAGMENT_TAG_EDIT_PROFILE_LOCATION"

    invoke-virtual {v1, v0, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method private hideProgressBar()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->progressBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->progressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    :cond_0
    return-void
.end method

.method private initializeFields()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->firstNameET:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->lastNameET:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->occupationET:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getOccupation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->companyET:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getCompany()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->websiteET:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getWebsite()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 335
    const-string/jumbo v0, ""

    .line 336
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getCountry()Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getCountry()Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getState()Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getState()Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getCity()Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getCity()Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    :cond_2
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->location:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    .line 345
    invoke-static {p0}, Lcom/b/a/h;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/b/a/l;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getOriginalImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/l;->a(Ljava/lang/String;)Lcom/b/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/b/a/d;->a(Landroid/widget/ImageView;)Lcom/b/a/h/b/k;

    .line 349
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->firstNameET:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 350
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->lastNameET:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 351
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->occupationET:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 352
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->companyET:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 353
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->websiteET:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 354
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->location:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    return-void

    .line 347
    :cond_3
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->avatar:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getImageBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private isStringEmpty(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 321
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 322
    const/4 v0, 0x0

    .line 324
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private launchAlbumsViewToPickPicture()V
    .locals 3

    .prologue
    .line 198
    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;

    invoke-direct {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;-><init>()V

    .line 199
    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->setCallbacks(Lcom/behance/sdk/listeners/IBehanceSDKGalleryPickerCallbacks;)V

    .line 200
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "FRAGMENT_TAG_EDIT_PROFILE_SELECT_IMAGE"

    invoke-virtual {v0, v1, v2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKImagePickerDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method private saveChanges()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 269
    iget-boolean v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->profileChanged:Z

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->firstNameET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 271
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->lastNameET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 272
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->occupationET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 273
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->companyET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 274
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->websiteET:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "^(http://)?(www\\.)?"

    const-string/jumbo v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "^(https://)?(www\\.)?"

    const-string/jumbo v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "^(www\\.)?"

    const-string/jumbo v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    move v0, v1

    .line 284
    :goto_0
    iget-object v8, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v8, v4}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setFirstName(Ljava/lang/String;)V

    .line 285
    iget-object v8, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v8, v5}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setLastName(Ljava/lang/String;)V

    .line 286
    iget-object v8, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v8, v6}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setOccupation(Ljava/lang/String;)V

    .line 287
    iget-object v6, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v6, v7}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setCompany(Ljava/lang/String;)V

    .line 288
    iget-object v6, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v6, v3}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setWebsite(Ljava/lang/String;)V

    .line 291
    sget v3, Lcom/behance/sdk/R$string;->bsdk_edit_profile_avatar_required_fields_missing_msg:I

    .line 293
    invoke-direct {p0, v4}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->isStringEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-direct {p0, v5}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->isStringEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 295
    sget v0, Lcom/behance/sdk/R$string;->bsdk_edit_profile_avatar_required_fields_missing_msg:I

    .line 310
    :goto_1
    if-eqz v2, :cond_5

    .line 311
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->showProgressBar()V

    .line 312
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->saveNavBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$color;->bsdk_adobe_blue_disabled:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->saveUserPortfolioChanges()V

    .line 318
    :cond_0
    :goto_2
    return-void

    .line 280
    :catch_0
    move-exception v3

    move-object v3, v0

    move v0, v2

    .line 281
    goto :goto_0

    .line 296
    :cond_1
    invoke-direct {p0, v4}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->isStringEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 298
    sget v0, Lcom/behance/sdk/R$string;->bsdk_edit_profile_avatar_first_name_field_missing_msg:I

    goto :goto_1

    .line 299
    :cond_2
    invoke-direct {p0, v5}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->isStringEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 301
    sget v0, Lcom/behance/sdk/R$string;->bsdk_edit_profile_avatar_last_name_field_missing_msg:I

    goto :goto_1

    .line 302
    :cond_3
    iget-object v4, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v4}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->isValidLocation()Z

    move-result v4

    if-nez v4, :cond_4

    .line 304
    sget v0, Lcom/behance/sdk/R$string;->bsdk_location_filter_dialog_city_empty_error:I

    goto :goto_1

    .line 305
    :cond_4
    if-nez v0, :cond_6

    .line 307
    sget v0, Lcom/behance/sdk/R$string;->bsdk_edit_profile_website_url_invalid_msg:I

    goto :goto_1

    .line 315
    :cond_5
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_6
    move v0, v3

    move v2, v1

    goto :goto_1
.end method

.method private setSelectedLocation(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getCountry()Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 259
    const-string/jumbo v0, "INSTANCE_STATE_KEY_SELECTED_COUNTRY"

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getCountry()Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 260
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getState()Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    const-string/jumbo v0, "INSTANCE_STATE_KEY_SELECTED_STATE"

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getState()Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getCity()Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 263
    const-string/jumbo v0, "INSTANCE_STATE_KEY_SELECTED_CITY"

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->getCity()Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 266
    :cond_1
    return-void
.end method

.method private showProgressBar()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->progressBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->progressBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->profileChanged:Z

    if-nez v0, :cond_0

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->profileChanged:Z

    .line 372
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->saveNavBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$color;->bsdk_adobe_blue:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 425
    packed-switch p1, :pswitch_data_0

    .line 468
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 441
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 442
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 443
    const-string/jumbo v1, "ACTIVITY_CC_SUCCESSFULLY_DOWNLOADED_FILES"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 444
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 445
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->onFileSelected(Ljava/io/File;)V

    goto :goto_0

    .line 450
    :pswitch_1
    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->imageCaptureFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 451
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->imageCaptureFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->onFileSelected(Ljava/io/File;)V

    goto :goto_0

    .line 455
    :pswitch_2
    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "INTENT_EXTRA_IMAGE_SAVED_TO_PATH"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 457
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 458
    const-string/jumbo v1, "INTENT_EXTRA_IMAGE_SAVED_TO_PATH"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 460
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 461
    iget-boolean v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->profileChanged:Z

    if-nez v0, :cond_0

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->profileChanged:Z

    .line 463
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->saveNavBtn:Landroid/widget/TextView;

    sget v1, Lcom/behance/sdk/R$color;->bsdk_adobe_blue:I

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x3ee
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->profileChanged:Z

    if-eqz v0, :cond_0

    .line 158
    sget v0, Lcom/behance/sdk/R$string;->bsdk_edit_profile_unsaved_changes_title:I

    sget v1, Lcom/behance/sdk/R$string;->bsdk_edit_profile_unsaved_changes_body:I

    sget v2, Lcom/behance/sdk/R$string;->bsdk_generic_alert_dialog_ok_btn_label:I

    sget v3, Lcom/behance/sdk/R$string;->bsdk_generic_alert_dialog_cancel_btn_label:I

    invoke-static {p0, v0, v1, v2, v3}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->getInstance(Landroid/content/Context;IIII)Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->unsavedChangesAlertDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    .line 161
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->unsavedChangesAlertDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setOnOKBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->unsavedChangesAlertDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->setOnNotOKBtnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->unsavedChangesAlertDialog:Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;

    invoke-virtual {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKGenericAlertDialog;->show()V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCCSelected()V
    .locals 6

    .prologue
    .line 537
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/behance/sdk/ui/activities/BehanceSDKCCLauncherActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 538
    sget-object v1, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_GIF:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v2, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_JPEG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v3, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_JPG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v4, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_PNG:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    sget-object v5, Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;->MIMETYPE_BMP:Lcom/adobe/creativesdk/foundation/storage/AdobeAssetMimeTypes;

    invoke-static {v1, v2, v3, v4, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 544
    const-string/jumbo v2, "ARGS_ALLOWED_MIME_TYPES"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 545
    const-string/jumbo v1, "ARGS_IMAGE_VALIDATOR_TYPE"

    const-string/jumbo v2, "PUBLISH_PROJECT_IMAGE_VALIDATOR"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    const/16 v1, 0x3ee

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 547
    return-void
.end method

.method public onCameraSelected()V
    .locals 3

    .prologue
    .line 518
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    const/4 v0, 0x0

    .line 522
    :try_start_0
    invoke-static {p0}, Lcom/behance/sdk/util/BehanceSDKProjectEditorFileUtils;->createImageFile(Landroid/content/Context;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 526
    :goto_0
    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->imageCaptureFilePath:Ljava/lang/String;

    .line 528
    invoke-static {}, Lcom/behance/sdk/BehanceSDK;->getInstance()Lcom/behance/sdk/BehanceSDK;

    move-result-object v2

    invoke-virtual {v2}, Lcom/behance/sdk/BehanceSDK;->getFileProviderAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 529
    const-string/jumbo v2, "output"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 530
    const/16 v0, 0x3ef

    invoke-virtual {p0, v1, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 533
    :cond_0
    return-void

    .line 523
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 206
    sget v1, Lcom/behance/sdk/R$id;->bsdkEditProfileActionbarBackBtnImageView:I

    if-ne v0, v1, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->onBackPressed()V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    sget v1, Lcom/behance/sdk/R$id;->bsdkEditProfileActionbarActionBtnTxtView:I

    if-ne v0, v1, :cond_2

    .line 209
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->saveChanges()V

    goto :goto_0

    .line 210
    :cond_2
    sget v1, Lcom/behance/sdk/R$id;->bsdkEditProfileAvatar:I

    if-ne v0, v1, :cond_4

    .line 211
    invoke-static {p0, v2}, Lcom/behance/sdk/util/BehanceSDKPermissionHelper;->checkPermission(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->launchAlbumsViewToPickPicture()V

    goto :goto_0

    .line 213
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 214
    invoke-static {v2, p0}, Lcom/behance/sdk/util/BehanceSDKPermissionHelper;->getPermissionFromRequestCode(ILandroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 217
    :cond_4
    sget v1, Lcom/behance/sdk/R$id;->bsdkGenericAlertDialogOKBtn:I

    if-ne v0, v1, :cond_5

    .line 218
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->closeThisActivity()V

    goto :goto_0

    .line 219
    :cond_5
    sget v1, Lcom/behance/sdk/R$id;->bsdkGenericAlertDialogNotOKBtn:I

    if-ne v0, v1, :cond_6

    .line 220
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->closeUnsavedChangesAlertDialog()V

    goto :goto_0

    .line 221
    :cond_6
    sget v1, Lcom/behance/sdk/R$id;->bsdkEditProfileLocation:I

    if-ne v0, v1, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->handleLocationClick()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_activity_edit_profile:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->setContentView(I)V

    .line 108
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->useBehanceTheme()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$bool;->isTablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->behanceSDK:Lcom/behance/sdk/BehanceSDK;

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDK;->getBehanceSDKCustomResourcesOptions()Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/BehanceSDKCustomResourcesOptions;->getPhoneOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->setRequestedOrientation(I)V

    .line 113
    :cond_0
    if-eqz p1, :cond_1

    .line 114
    const-string/jumbo v0, "SAVE_INSTANCE_STATE_KEY_IMAGE_CAPTURE_FILE_PATH"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->imageCaptureFilePath:Ljava/lang/String;

    .line 117
    :cond_1
    sget v0, Lcom/behance/sdk/R$id;->bsdkEditProfileActionbarBackBtnImageView:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    sget v0, Lcom/behance/sdk/R$id;->bsdkEditProfileActionbarActionBtnTxtView:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->saveNavBtn:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->saveNavBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget v0, Lcom/behance/sdk/R$id;->bsdkEditProfileLoader:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->progressBar:Landroid/view/View;

    .line 125
    sget v0, Lcom/behance/sdk/R$id;->bsdkEditProfileFirstName:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->firstNameET:Landroid/widget/EditText;

    .line 126
    sget v0, Lcom/behance/sdk/R$id;->bsdkEditProfileLastName:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->lastNameET:Landroid/widget/EditText;

    .line 127
    sget v0, Lcom/behance/sdk/R$id;->bsdkEditProfileOccupation:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->occupationET:Landroid/widget/EditText;

    .line 128
    sget v0, Lcom/behance/sdk/R$id;->bsdkEditProfileCompany:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->companyET:Landroid/widget/EditText;

    .line 129
    sget v0, Lcom/behance/sdk/R$id;->bsdkEditProfileWebsite:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->websiteET:Landroid/widget/EditText;

    .line 130
    sget v0, Lcom/behance/sdk/R$id;->bsdkEditProfileAvatar:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->avatar:Landroid/widget/ImageView;

    .line 131
    sget v0, Lcom/behance/sdk/R$id;->bsdkEditProfileLocation:I

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->location:Landroid/widget/TextView;

    .line 133
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "EDIT_PROFILE_HEADLESS_FRAGMENT_TAG"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    .line 134
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    if-nez v0, :cond_5

    .line 135
    new-instance v0, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-direct {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;-><init>()V

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    .line 136
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    const-string/jumbo v2, "EDIT_PROFILE_HEADLESS_FRAGMENT_TAG"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 138
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->loadUserDetailsFromServer()V

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setCallbacks(Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment$Callbacks;)V

    .line 145
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 146
    const-string/jumbo v1, "FRAGMENT_TAG_EDIT_PROFILE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 147
    instance-of v1, v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;

    if-eqz v1, :cond_2

    .line 148
    check-cast v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->setCallbacks(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$Callbacks;)V

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->isGetUserProfileTaskInProgress()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->isEditProfileTaskInProgress()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    :cond_3
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->showProgressBar()V

    .line 153
    :cond_4
    return-void

    .line 140
    :cond_5
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->initializeFields()V

    .line 141
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->hideProgressBar()V

    goto :goto_0
.end method

.method public onEditProfileFailure(Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 397
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->getExceptions()Ljava/util/List;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_0

    .line 399
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 400
    sget-object v2, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v3, "Problem updating user profile"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 403
    :cond_0
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->isProfileUpdateFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_edit_profile_editing_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 413
    :goto_1
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->hideProgressBar()V

    .line 414
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->closeThisActivity()V

    .line 415
    return-void

    .line 405
    :cond_1
    invoke-virtual {p1}, Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;->isProfileAvatarUpdateFailed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 406
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_edit_profile_avatar_saving_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 408
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;->onEditProfileSuccess()V

    goto :goto_1

    .line 411
    :cond_2
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_edit_profile_editing_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public onEditProfileSuccess(Lcom/behance/sdk/asynctasks/result/BehanceSDKEditProfileTaskResult;)V
    .locals 1

    .prologue
    .line 391
    invoke-static {}, Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;->getInstance()Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/behance/sdk/managers/BehanceSDKEditProfileManager;->onEditProfileSuccess()V

    .line 392
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->closeThisActivity()V

    .line 393
    return-void
.end method

.method public onFileSelected(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 501
    new-instance v0, Lcom/behance/sdk/project/modules/ImageModule;

    invoke-direct {v0, p1}, Lcom/behance/sdk/project/modules/ImageModule;-><init>(Ljava/io/File;)V

    .line 502
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v1, v0}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setImage(Lcom/behance/sdk/project/modules/ImageModule;)V

    .line 511
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/behance/sdk/ui/activities/BehanceSDKCropperActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 512
    const-string/jumbo v1, "INTENT_EXTRA_IMAGE_PATH"

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    const/16 v1, 0x3f0

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 514
    return-void
.end method

.method public onGetUserProfileFailure(Ljava/lang/Exception;Lcom/behance/sdk/asynctask/params/BehanceSDKGetUserProfileTaskParams;)V
    .locals 3

    .prologue
    .line 384
    sget-object v0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Problem retrieving user Profile details"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$string;->bsdk_edit_profile_loading_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 386
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->closeThisActivity()V

    .line 387
    return-void
.end method

.method public onGetUserProfileSuccess()V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->initializeFields()V

    .line 379
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->hideProgressBar()V

    .line 380
    return-void
.end method

.method public onLocationFilterDone(Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;)V
    .locals 4

    .prologue
    .line 475
    const-string/jumbo v0, ""

    .line 476
    if-eqz p1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v1, p1}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setCountry(Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;)V

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    iget-boolean v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->profileChanged:Z

    if-nez v1, :cond_0

    .line 480
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->profileChanged:Z

    .line 481
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->saveNavBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/behance/sdk/R$color;->bsdk_adobe_blue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 484
    :cond_0
    if-eqz p2, :cond_2

    .line 485
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v1, p2}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setState(Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;)V

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    :goto_0
    if-eqz p3, :cond_1

    .line 493
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    invoke-virtual {v1, p3}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setCity(Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;)V

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->location:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    return-void

    .line 489
    :cond_2
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->editProfileHeadlessFragment:Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/behance/sdk/fragments/headless/BehanceSDKEditProfileHeadlessFragment;->setState(Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;)V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 227
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 228
    packed-switch p1, :pswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 230
    :pswitch_0
    array-length v0, p3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 231
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->isimageDialogLaunched:Ljava/lang/Boolean;

    goto :goto_0

    .line 233
    :cond_0
    sget v0, Lcom/behance/sdk/R$string;->behance_sdk_permissions_error_generic:I

    .line 235
    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 171
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 172
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->isimageDialogLaunched:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->launchAlbumsViewToPickPicture()V

    .line 174
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->isimageDialogLaunched:Ljava/lang/Boolean;

    .line 176
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 551
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 552
    iget-object v0, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->imageCaptureFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 553
    const-string/jumbo v0, "SAVE_INSTANCE_STATE_KEY_IMAGE_CAPTURE_FILE_PATH"

    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->imageCaptureFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 97
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->displayNoInternetConnectivity()V

    .line 101
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public setProfileEdited(Z)V
    .locals 3

    .prologue
    .line 419
    iput-boolean p1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->profileChanged:Z

    .line 420
    iget-object v1, p0, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->saveNavBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/activities/BehanceSDKEditProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_0

    sget v0, Lcom/behance/sdk/R$color;->bsdk_adobe_blue:I

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 421
    return-void

    .line 420
    :cond_0
    sget v0, Lcom/behance/sdk/R$color;->bsdk_adobe_blue_disabled:I

    goto :goto_0
.end method
