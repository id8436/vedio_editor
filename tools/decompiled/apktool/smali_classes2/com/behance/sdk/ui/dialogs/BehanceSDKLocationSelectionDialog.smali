.class public Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "BehanceSDKLocationSelectionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/behance/sdk/listeners/IBehanceSDKLocationFiltersDataManagerListener;


# static fields
.field private static final CITIES_VIEW_DISPLAY_INDEX:I = 0x3

.field private static final COUNTRIES_VIEW_DISPLAY_INDEX:I = 0x1

.field private static final INSTANCE_STATE_KEY_LAST_DISPLAYED_CHILD_INDEX:Ljava/lang/String; = "INSTANCE_STATE_KEY_LAST_DISPLAYED_CHILD_INDEX"

.field public static final INSTANCE_STATE_KEY_SELECTED_CITY:Ljava/lang/String; = "INSTANCE_STATE_KEY_SELECTED_CITY"

.field public static final INSTANCE_STATE_KEY_SELECTED_COUNTRY:Ljava/lang/String; = "INSTANCE_STATE_KEY_SELECTED_COUNTRY"

.field public static final INSTANCE_STATE_KEY_SELECTED_STATE:Ljava/lang/String; = "INSTANCE_STATE_KEY_SELECTED_STATE"

.field private static final MAIN_VIEW_DISPLAY_INDEX:I = 0x0

.field private static final STATES_VIEW_DISPLAY_INDEX:I = 0x2

.field private static final logger:Lcom/behance/sdk/logger/ILogger;


# instance fields
.field private callbacks:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$Callbacks;

.field private citiesListView:Landroid/widget/ListView;

.field private citySearchStrEditText:Landroid/widget/EditText;

.field private countriesListView:Landroid/widget/ListView;

.field private loadingInProgress:Z

.field private locationFiltersDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;

.field private progressSpinner:Landroid/view/View;

.field private rootView:Landroid/view/View;

.field private selectedCityContainer:Landroid/view/View;

.field private selectedCityDTO:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

.field private selectedCityTxtView:Landroid/widget/TextView;

.field private selectedCountryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

.field private selectedCountryTxtView:Landroid/widget/TextView;

.field private selectedStateContainer:Landroid/view/View;

.field private selectedStateDTO:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

.field private selectedStateTxtView:Landroid/widget/TextView;

.field private statesListView:Landroid/widget/ListView;

.field private viewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;

    invoke-static {v0}, Lcom/behance/sdk/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/behance/sdk/logger/ILogger;

    move-result-object v0

    sput-object v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->logger:Lcom/behance/sdk/logger/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;Landroid/widget/AdapterView;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->handleStateListItemClick(Landroid/widget/AdapterView;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;Landroid/widget/AdapterView;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->handleCityListItemClick(Landroid/widget/AdapterView;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->searchForCities(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;Landroid/widget/AdapterView;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->handleCountryListItemClick(Landroid/widget/AdapterView;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->citySearchStrEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private clearCitySearchResultsInDisplay()V
    .locals 3

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->hideProgressSpinner()V

    .line 623
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 624
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 627
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->citySearchStrEditText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 628
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->citiesListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 629
    return-void
.end method

.method private createCountriesListView()V
    .locals 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogSelectedCountryContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 254
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->rootView:Landroid/view/View;

    sget v2, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogSelectedCountryTxtView:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCountryTxtView:Landroid/widget/TextView;

    .line 255
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCountryTxtView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getSelectedCountry()Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    sget-object v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$ClickTagData;->SHOW_COUNTRIES_VIEW:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$ClickTagData;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 258
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogCountriesListView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->countriesListView:Landroid/widget/ListView;

    .line 261
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->countriesListView:Landroid/widget/ListView;

    new-instance v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$7;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$7;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 269
    invoke-static {}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->getInstance()Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->locationFiltersDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;

    .line 270
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->locationFiltersDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->addListener(Lcom/behance/sdk/listeners/IBehanceSDKLocationFiltersDataManagerListener;)V

    .line 271
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->showProgressSpinner()V

    .line 272
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->locationFiltersDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;

    invoke-virtual {v0}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->loadCountries()V

    .line 273
    return-void
.end method

.method private displayCitiesView()V
    .locals 3

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->loadingInProgress:Z

    if-nez v0, :cond_0

    .line 469
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->setCitiesListAdapter(Ljava/util/List;)V

    .line 470
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$anim;->bsdk_dialog_enter:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 471
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$anim;->bsdk_dialog_exit:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 472
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 475
    new-instance v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$8;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$8;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 492
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->viewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 494
    :cond_0
    return-void
.end method

.method private displayCountriesView()V
    .locals 3

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->loadingInProgress:Z

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$anim;->bsdk_dialog_enter:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 447
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$anim;->bsdk_dialog_exit:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 448
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->viewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 449
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->locationFiltersDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;

    invoke-virtual {v0}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->isGetCountriesTaskInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->showProgressSpinner()V

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCountryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->updateSelectedCountryInCountriesListView(Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;)V

    .line 453
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->hideProgressSpinner()V

    goto :goto_0
.end method

.method private displayMainView()V
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$anim;->bsdk_dialog_enter:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 440
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$anim;->bsdk_dialog_exit:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 441
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->viewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 442
    return-void
.end method

.method private displaySelectedCityItemInMainView()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityTxtView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getSelectedCity()Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    return-void
.end method

.method private displaySelectedStateItemInMainView()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogSelectedStateTxtView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateTxtView:Landroid/widget/TextView;

    .line 290
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateTxtView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getSelectedState()Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    return-void
.end method

.method private displayStatesView()V
    .locals 3

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->loadingInProgress:Z

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateDTO:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->updateSelectedStateInStatesListView(Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;)V

    .line 461
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$anim;->bsdk_dialog_enter:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 462
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$anim;->bsdk_dialog_exit:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 463
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->viewFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 465
    :cond_0
    return-void
.end method

.method private getAllCitiesDTO()Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;
    .locals 3

    .prologue
    .line 535
    new-instance v0, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;-><init>()V

    .line 536
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_location_filter_dialog_city_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;->setDisplayName(Ljava/lang/String;)V

    .line 537
    const-string/jumbo v1, "ALL_CITIES_ID"

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;->setId(Ljava/lang/String;)V

    .line 538
    return-object v0
.end method

.method private getAllStatesDTO()Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;
    .locals 3

    .prologue
    .line 520
    new-instance v0, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;-><init>()V

    .line 521
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_location_filter_dialog_state_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->setDisplayName(Ljava/lang/String;)V

    .line 522
    const-string/jumbo v1, "ALL_STATES_ID"

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->setId(Ljava/lang/String;)V

    .line 523
    return-object v0
.end method

.method private getBundleArguments(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .prologue
    .line 245
    .line 246
    if-nez p1, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 249
    :cond_0
    return-object p1
.end method

.method public static getInstance()Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;

    invoke-direct {v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;-><init>()V

    .line 75
    return-object v0
.end method

.method private getSelectedCity()Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityDTO:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    if-nez v0, :cond_0

    .line 528
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getAllCitiesDTO()Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    move-result-object v0

    .line 529
    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityDTO:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityDTO:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    return-object v0
.end method

.method private getSelectedCountry()Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCountryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    if-nez v0, :cond_0

    .line 498
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getWorldWideCountryDTO()Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    move-result-object v0

    .line 499
    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCountryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCountryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    return-object v0
.end method

.method private getSelectedState()Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateDTO:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    if-nez v0, :cond_0

    .line 513
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getAllStatesDTO()Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    move-result-object v0

    .line 514
    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateDTO:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateDTO:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    return-object v0
.end method

.method private getWorldWideCountryDTO()Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;
    .locals 3

    .prologue
    .line 505
    new-instance v0, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    invoke-direct {v0}, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;-><init>()V

    .line 506
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_location_filter_dialog_country_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->setDisplayName(Ljava/lang/String;)V

    .line 507
    const-string/jumbo v1, "WORLD_WIDE_COUNTRY_ID"

    invoke-virtual {v0, v1}, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->setId(Ljava/lang/String;)V

    .line 508
    return-object v0
.end method

.method private handleCityListItemClick(Landroid/widget/AdapterView;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 429
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 430
    instance-of v1, v0, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    if-eqz v1, :cond_0

    .line 431
    check-cast v0, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityDTO:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    .line 432
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityTxtView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityDTO:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->displayMainView()V

    .line 434
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->clearCitySearchResultsInDisplay()V

    .line 436
    :cond_0
    return-void
.end method

.method private handleCountryListItemClick(Landroid/widget/AdapterView;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 392
    instance-of v1, v0, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 395
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateDTO:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    .line 397
    check-cast v0, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCountryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    .line 398
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCountryTxtView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCountryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->displayMainView()V

    .line 400
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->hideSelectedStateItemInMainView()V

    .line 401
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->hideSelectedCityItemInMainView()V

    .line 403
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCountryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->getId()Ljava/lang/String;

    move-result-object v0

    .line 404
    sget-object v1, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->COUNTRY_CODES_FOR_LOAD_STATES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->loadStates(Ljava/lang/String;)V

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    const-string/jumbo v1, "WORLD_WIDE_COUNTRY_ID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->displaySelectedCityItemInMainView()V

    goto :goto_0
.end method

.method private handleDoneClick()V
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityDTO:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ALL_CITIES_ID"

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityDTO:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityDTO:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityDTO:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 377
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_location_filter_dialog_city_empty_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 381
    :goto_0
    return-void

    .line 379
    :cond_1
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->notifyListenersAndCloseDialog()V

    goto :goto_0
.end method

.method private handleStateListItemClick(Landroid/widget/AdapterView;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 413
    invoke-virtual {p1, p2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 414
    instance-of v1, v0, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    if-eqz v1, :cond_0

    .line 415
    check-cast v0, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateDTO:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    .line 416
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateTxtView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateDTO:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->displayMainView()V

    .line 418
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityDTO:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    .line 420
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateDTO:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ALL_STATES_ID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->displaySelectedCityItemInMainView()V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->hideSelectedCityItemInMainView()V

    goto :goto_0
.end method

.method private hideProgressSpinner()V
    .locals 2

    .prologue
    .line 547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->loadingInProgress:Z

    .line 548
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->progressSpinner:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 549
    return-void
.end method

.method private hideSelectedCityItemInMainView()V
    .locals 2

    .prologue
    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityDTO:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    .line 317
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    return-void
.end method

.method private hideSelectedStateItemInMainView()V
    .locals 2

    .prologue
    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateDTO:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    .line 295
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    return-void
.end method

.method private loadStates(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->showProgressSpinner()V

    .line 553
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->locationFiltersDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;

    invoke-virtual {v0, p1}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->loadStates(Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method private notifyListenersAndCloseDialog()V
    .locals 4

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getCallbacks()Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$Callbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getCallbacks()Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$Callbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCountryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateDTO:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    iget-object v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityDTO:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    invoke-interface {v0, v1, v2, v3}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$Callbacks;->onLocationFilterDone(Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;)V

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 388
    return-void
.end method

.method private searchForCities(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 605
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->showProgressSpinner()V

    .line 607
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCountryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCountryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->getId()Ljava/lang/String;

    move-result-object v0

    .line 612
    :goto_0
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateDTO:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    if-eqz v2, :cond_0

    .line 613
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateDTO:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;->getId()Ljava/lang/String;

    move-result-object v1

    .line 615
    :cond_0
    iget-object v2, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->locationFiltersDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;

    invoke-virtual {v2, v0, v1, p1}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->searchForCities(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private setCitiesListAdapter(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 327
    :goto_0
    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityDTO:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    invoke-direct {v1, v2, v3, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;-><init>(Landroid/content/Context;Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;Ljava/util/List;)V

    .line 329
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->citiesListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 330
    return-void

    .line 325
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private showProgressSpinner()V
    .locals 2

    .prologue
    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->loadingInProgress:Z

    .line 543
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->progressSpinner:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 544
    return-void
.end method

.method private updateSelectedCountryInCountriesListView(Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;)V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->countriesListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;

    .line 278
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;->getSelectedLocationDTO()Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    .line 280
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    invoke-virtual {v0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;->setSelectedLocationDTO(Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;)V

    .line 282
    invoke-virtual {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;->notifyDataSetChanged()V

    .line 285
    :cond_0
    return-void
.end method

.method private updateSelectedStateInStatesListView(Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;)V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->statesListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;

    .line 301
    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;->getSelectedLocationDTO()Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;

    move-result-object v1

    check-cast v1, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    .line 303
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 304
    invoke-virtual {v0, p1}, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;->setSelectedLocationDTO(Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;)V

    .line 305
    invoke-virtual {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;->notifyDataSetChanged()V

    .line 308
    :cond_0
    return-void
.end method


# virtual methods
.method public getCallbacks()Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$Callbacks;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->callbacks:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$Callbacks;

    return-object v0
.end method

.method public onCitiesLoadingFailure(Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;Ljava/lang/Exception;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 641
    sget-object v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Problem loading Cities for [Country id - %s] [State id - %s] [Search Str - %s]"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getCountryId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getStateId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 642
    invoke-virtual {p1}, Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;->getCitySearchStr()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 641
    invoke-interface {v0, p2, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_location_filter_dialog_failed_to_load_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 644
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 645
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->hideProgressSpinner()V

    .line 647
    :cond_0
    return-void
.end method

.method public onCitiesLoadingSuccess(Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/behance/sdk/asynctask/params/BehanceSDKGetCitiesAsyncTaskParams;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 633
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 634
    invoke-direct {p0, p2}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->setCitiesListAdapter(Ljava/util/List;)V

    .line 635
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->hideProgressSpinner()V

    .line 637
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 353
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogCitiesSectionBackBtn:I

    if-eq v1, v2, :cond_0

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogStatesSectionBackBtn:I

    if-eq v1, v2, :cond_0

    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogCountriesSectionBackBtn:I

    if-ne v1, v2, :cond_2

    .line 358
    :cond_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->displayMainView()V

    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogCitiesSectionBackBtn:I

    if-ne v0, v1, :cond_1

    .line 360
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->clearCitySearchResultsInDisplay()V

    .line 373
    :cond_1
    :goto_0
    return-void

    .line 362
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogCloseDialogBtn:I

    if-ne v1, v2, :cond_3

    .line 363
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->handleDoneClick()V

    goto :goto_0

    .line 364
    :cond_3
    instance-of v1, v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$ClickTagData;

    if-eqz v1, :cond_1

    .line 365
    sget-object v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$ClickTagData;->SHOW_COUNTRIES_VIEW:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$ClickTagData;

    if-ne v0, v1, :cond_4

    .line 366
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->displayCountriesView()V

    goto :goto_0

    .line 367
    :cond_4
    sget-object v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$ClickTagData;->SHOW_STATES_VIEW:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$ClickTagData;

    if-ne v0, v1, :cond_5

    .line 368
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->displayStatesView()V

    goto :goto_0

    .line 369
    :cond_5
    sget-object v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$ClickTagData;->SHOW_CITIES_VIEW:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$ClickTagData;

    if-ne v0, v1, :cond_1

    .line 370
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->displayCitiesView()V

    goto :goto_0
.end method

.method public onCountriesLoadingFailure(Ljava/lang/Exception;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 574
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->hideProgressSpinner()V

    .line 575
    sget-object v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Problem loading Countries list"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 576
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_location_filter_dialog_failed_to_load_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 577
    return-void
.end method

.method public onCountriesLoadingSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 560
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 566
    :goto_0
    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCountryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    invoke-direct {v1, v2, v3, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;-><init>(Landroid/content/Context;Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;Ljava/util/List;)V

    .line 568
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->countriesListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 569
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->hideProgressSpinner()V

    .line 570
    return-void

    .line 563
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const/4 v0, 0x2

    sget v1, Lcom/behance/sdk/R$style;->BsdkFilterDialogTheme:I

    invoke-virtual {p0, v0, v1}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->setStyle(II)V

    .line 86
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 90
    sget v0, Lcom/behance/sdk/R$layout;->bsdk_dialog_fragment_location_filter:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->rootView:Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->rootView:Landroid/view/View;

    sget v2, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogBackBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    new-instance v2, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$1;

    invoke-direct {v2, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$1;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->rootView:Landroid/view/View;

    sget v2, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogViewFlipper:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->viewFlipper:Landroid/widget/ViewFlipper;

    .line 101
    invoke-direct {p0, p3}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getBundleArguments(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 104
    if-eqz v2, :cond_2

    .line 105
    const-string/jumbo v0, "INSTANCE_STATE_KEY_LAST_DISPLAYED_CHILD_INDEX"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 107
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCountryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    if-nez v0, :cond_0

    .line 108
    const-string/jumbo v0, "INSTANCE_STATE_KEY_SELECTED_COUNTRY"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 109
    instance-of v3, v0, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    if-eqz v3, :cond_0

    .line 110
    check-cast v0, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCountryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateDTO:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    if-nez v0, :cond_1

    .line 115
    const-string/jumbo v0, "INSTANCE_STATE_KEY_SELECTED_STATE"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 116
    instance-of v3, v0, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    if-eqz v3, :cond_1

    .line 117
    check-cast v0, Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateDTO:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityDTO:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    if-nez v0, :cond_2

    .line 122
    const-string/jumbo v0, "INSTANCE_STATE_KEY_SELECTED_CITY"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 123
    instance-of v2, v0, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    if-eqz v2, :cond_2

    .line 124
    check-cast v0, Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityDTO:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    :cond_2
    move v0, v1

    .line 130
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCountryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCountryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    invoke-virtual {v1}, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->getId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "WORLD_WIDE_COUNTRY_ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 131
    :cond_3
    const/4 v0, 0x1

    .line 136
    :cond_4
    if-lez v0, :cond_5

    .line 137
    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 140
    :cond_5
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogProgressSpinner:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->progressSpinner:Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogSelectedStateContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateContainer:Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateContainer:Landroid/view/View;

    sget-object v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$ClickTagData;->SHOW_STATES_VIEW:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$ClickTagData;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogStatesListView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->statesListView:Landroid/widget/ListView;

    .line 148
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->statesListView:Landroid/widget/ListView;

    new-instance v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$2;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$2;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogSelectedCityContainer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityContainer:Landroid/view/View;

    .line 158
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityContainer:Landroid/view/View;

    sget-object v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$ClickTagData;->SHOW_CITIES_VIEW:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$ClickTagData;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 159
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogSelectedCityTxtView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityTxtView:Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogCitiesListView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->citiesListView:Landroid/widget/ListView;

    .line 163
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->citiesListView:Landroid/widget/ListView;

    new-instance v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$3;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$3;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->citiesListView:Landroid/widget/ListView;

    new-instance v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$4;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$4;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogCitySearchStrEditText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->citySearchStrEditText:Landroid/widget/EditText;

    .line 182
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->citySearchStrEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$5;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$5;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 200
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->citySearchStrEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$6;

    invoke-direct {v1, p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$6;-><init>(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 212
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogCloseDialogBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 213
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogCitiesSectionBackBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 216
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogCountriesSectionBackBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 219
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->rootView:Landroid/view/View;

    sget v1, Lcom/behance/sdk/R$id;->bsdkLocationFilterDialogStatesSectionBackBtn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->createCountriesListView()V

    .line 227
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCountryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    if-eqz v0, :cond_6

    .line 228
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCountryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    invoke-virtual {v0}, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->getId()Ljava/lang/String;

    move-result-object v0

    .line 229
    sget-object v1, Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;->COUNTRY_CODES_FOR_LOAD_STATES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 230
    invoke-direct {p0, v0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->loadStates(Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->displaySelectedStateItemInMainView()V

    .line 237
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityDTO:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    if-eqz v0, :cond_7

    .line 238
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->displaySelectedCityItemInMainView()V

    .line 241
    :cond_7
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->rootView:Landroid/view/View;

    return-object v0

    .line 232
    :cond_8
    const-string/jumbo v1, "WORLD_WIDE_COUNTRY_ID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 233
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->displaySelectedCityItemInMainView()V

    goto :goto_0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 347
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDetach()V

    .line 348
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->locationFiltersDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->removeListener(Lcom/behance/sdk/listeners/IBehanceSDKLocationFiltersDataManagerListener;)V

    .line 349
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 334
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 336
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->viewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 337
    const-string/jumbo v1, "INSTANCE_STATE_KEY_LAST_DISPLAYED_CHILD_INDEX"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    const-string/jumbo v0, "INSTANCE_STATE_KEY_SELECTED_COUNTRY"

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCountryDTO:Lcom/behance/sdk/dto/location/BehanceSDKCountryDTO;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 339
    const-string/jumbo v0, "INSTANCE_STATE_KEY_SELECTED_STATE"

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateDTO:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 340
    const-string/jumbo v0, "INSTANCE_STATE_KEY_SELECTED_CITY"

    iget-object v1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedCityDTO:Lcom/behance/sdk/dto/location/BehanceSDKCityDTO;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 342
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->locationFiltersDataManager:Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;

    invoke-virtual {v0, p0}, Lcom/behance/sdk/datamanager/BehanceSDKProfileLocationsDataManager;->removeListener(Lcom/behance/sdk/listeners/IBehanceSDKLocationFiltersDataManagerListener;)V

    .line 343
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 663
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 664
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$bool;->bsdk_big_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/behance/sdk/R$dimen;->global_filter_dialog_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 667
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$dimen;->global_filter_dialog_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 668
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 671
    :cond_0
    return-void
.end method

.method public onStatesLoadingFailure(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 597
    sget-object v0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->logger:Lcom/behance/sdk/logger/ILogger;

    const-string/jumbo v1, "Problem loading States for [Country id - %s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, p2, v1, v2}, Lcom/behance/sdk/logger/ILogger;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/behance/sdk/R$string;->bsdk_location_filter_dialog_failed_to_load_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 599
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->hideProgressSpinner()V

    .line 600
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->hideSelectedStateItemInMainView()V

    .line 601
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->displaySelectedCityItemInMainView()V

    .line 602
    return-void
.end method

.method public onStatesLoadingSuccess(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 582
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 588
    :goto_0
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->displaySelectedStateItemInMainView()V

    .line 589
    new-instance v1, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;

    invoke-virtual {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->selectedStateDTO:Lcom/behance/sdk/dto/location/BehanceSDKStateDTO;

    invoke-direct {v1, v2, v3, v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKLocationFilterListItemArrayAdapter;-><init>(Landroid/content/Context;Lcom/behance/sdk/dto/location/BehanceSDKLocationDTO;Ljava/util/List;)V

    .line 591
    iget-object v0, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->statesListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 592
    invoke-direct {p0}, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->hideProgressSpinner()V

    .line 593
    return-void

    .line 585
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public setCallbacks(Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$Callbacks;)V
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog;->callbacks:Lcom/behance/sdk/ui/dialogs/BehanceSDKLocationSelectionDialog$Callbacks;

    .line 655
    return-void
.end method
