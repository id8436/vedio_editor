package com.behance.sdk.ui.dialogs;

import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ViewFlipper;
import com.behance.sdk.R;
import com.behance.sdk.asynctask.params.BehanceSDKGetCitiesAsyncTaskParams;
import com.behance.sdk.datamanager.BehanceSDKProfileLocationsDataManager;
import com.behance.sdk.dto.location.BehanceSDKCityDTO;
import com.behance.sdk.dto.location.BehanceSDKCountryDTO;
import com.behance.sdk.dto.location.BehanceSDKStateDTO;
import com.behance.sdk.listeners.IBehanceSDKLocationFiltersDataManagerListener;
import com.behance.sdk.logger.ILogger;
import com.behance.sdk.logger.LoggerFactory;
import com.behance.sdk.ui.adapters.BehanceSDKLocationFilterListItemArrayAdapter;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKLocationSelectionDialog extends DialogFragment implements View.OnClickListener, IBehanceSDKLocationFiltersDataManagerListener {
    private static final int CITIES_VIEW_DISPLAY_INDEX = 3;
    private static final int COUNTRIES_VIEW_DISPLAY_INDEX = 1;
    private static final String INSTANCE_STATE_KEY_LAST_DISPLAYED_CHILD_INDEX = "INSTANCE_STATE_KEY_LAST_DISPLAYED_CHILD_INDEX";
    public static final String INSTANCE_STATE_KEY_SELECTED_CITY = "INSTANCE_STATE_KEY_SELECTED_CITY";
    public static final String INSTANCE_STATE_KEY_SELECTED_COUNTRY = "INSTANCE_STATE_KEY_SELECTED_COUNTRY";
    public static final String INSTANCE_STATE_KEY_SELECTED_STATE = "INSTANCE_STATE_KEY_SELECTED_STATE";
    private static final int MAIN_VIEW_DISPLAY_INDEX = 0;
    private static final int STATES_VIEW_DISPLAY_INDEX = 2;
    private static final ILogger logger = LoggerFactory.getLogger(BehanceSDKLocationSelectionDialog.class);
    private Callbacks callbacks;
    private ListView citiesListView;
    private EditText citySearchStrEditText;
    private ListView countriesListView;
    private boolean loadingInProgress;
    private BehanceSDKProfileLocationsDataManager locationFiltersDataManager;
    private View progressSpinner;
    private View rootView;
    private View selectedCityContainer;
    private BehanceSDKCityDTO selectedCityDTO;
    private TextView selectedCityTxtView;
    private BehanceSDKCountryDTO selectedCountryDTO;
    private TextView selectedCountryTxtView;
    private View selectedStateContainer;
    private BehanceSDKStateDTO selectedStateDTO;
    private TextView selectedStateTxtView;
    private ListView statesListView;
    private ViewFlipper viewFlipper;

    public interface Callbacks {
        void onLocationFilterDone(BehanceSDKCountryDTO behanceSDKCountryDTO, BehanceSDKStateDTO behanceSDKStateDTO, BehanceSDKCityDTO behanceSDKCityDTO);
    }

    enum ClickTagData {
        SHOW_COUNTRIES_VIEW,
        SHOW_STATES_VIEW,
        SHOW_CITIES_VIEW
    }

    public static BehanceSDKLocationSelectionDialog getInstance() {
        return new BehanceSDKLocationSelectionDialog();
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(2, R.style.BsdkFilterDialogTheme);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i = 0;
        this.rootView = layoutInflater.inflate(R.layout.bsdk_dialog_fragment_location_filter, viewGroup, false);
        this.rootView.findViewById(R.id.bsdkLocationFilterDialogBackBtn).setOnClickListener(new View.OnClickListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKLocationSelectionDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BehanceSDKLocationSelectionDialog.this.dismiss();
            }
        });
        this.viewFlipper = (ViewFlipper) this.rootView.findViewById(R.id.bsdkLocationFilterDialogViewFlipper);
        Bundle bundleArguments = getBundleArguments(bundle);
        if (bundleArguments != null) {
            i = bundleArguments.getInt(INSTANCE_STATE_KEY_LAST_DISPLAYED_CHILD_INDEX, 0);
            if (this.selectedCountryDTO == null) {
                Serializable serializable = bundleArguments.getSerializable(INSTANCE_STATE_KEY_SELECTED_COUNTRY);
                if (serializable instanceof BehanceSDKCountryDTO) {
                    this.selectedCountryDTO = (BehanceSDKCountryDTO) serializable;
                }
            }
            if (this.selectedStateDTO == null) {
                Serializable serializable2 = bundleArguments.getSerializable(INSTANCE_STATE_KEY_SELECTED_STATE);
                if (serializable2 instanceof BehanceSDKStateDTO) {
                    this.selectedStateDTO = (BehanceSDKStateDTO) serializable2;
                }
            }
            if (this.selectedCityDTO == null) {
                Serializable serializable3 = bundleArguments.getSerializable(INSTANCE_STATE_KEY_SELECTED_CITY);
                if (serializable3 instanceof BehanceSDKCityDTO) {
                    this.selectedCityDTO = (BehanceSDKCityDTO) serializable3;
                }
            }
        }
        int i2 = i;
        if (this.selectedCountryDTO == null || this.selectedCountryDTO.getId().equals(BehanceSDKCountryDTO.WORLD_WIDE_COUNTRY_ID)) {
            i2 = 1;
        }
        if (i2 > 0) {
            this.viewFlipper.setDisplayedChild(i2);
        }
        this.progressSpinner = this.rootView.findViewById(R.id.bsdkLocationFilterDialogProgressSpinner);
        this.selectedStateContainer = this.rootView.findViewById(R.id.bsdkLocationFilterDialogSelectedStateContainer);
        this.selectedStateContainer.setTag(ClickTagData.SHOW_STATES_VIEW);
        this.selectedStateContainer.setOnClickListener(this);
        this.statesListView = (ListView) this.rootView.findViewById(R.id.bsdkLocationFilterDialogStatesListView);
        this.statesListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKLocationSelectionDialog.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i3, long j) {
                BehanceSDKLocationSelectionDialog.this.handleStateListItemClick(adapterView, i3);
            }
        });
        this.selectedCityContainer = this.rootView.findViewById(R.id.bsdkLocationFilterDialogSelectedCityContainer);
        this.selectedCityContainer.setTag(ClickTagData.SHOW_CITIES_VIEW);
        this.selectedCityContainer.setOnClickListener(this);
        this.selectedCityTxtView = (TextView) this.rootView.findViewById(R.id.bsdkLocationFilterDialogSelectedCityTxtView);
        this.citiesListView = (ListView) this.rootView.findViewById(R.id.bsdkLocationFilterDialogCitiesListView);
        this.citiesListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKLocationSelectionDialog.3
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i3, long j) {
                BehanceSDKLocationSelectionDialog.this.handleCityListItemClick(adapterView, i3);
            }
        });
        this.citiesListView.setOnTouchListener(new View.OnTouchListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKLocationSelectionDialog.4
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                ((InputMethodManager) BehanceSDKLocationSelectionDialog.this.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(BehanceSDKLocationSelectionDialog.this.rootView.getWindowToken(), 0);
                return false;
            }
        });
        this.citySearchStrEditText = (EditText) this.rootView.findViewById(R.id.bsdkLocationFilterDialogCitySearchStrEditText);
        this.citySearchStrEditText.addTextChangedListener(new TextWatcher() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKLocationSelectionDialog.5
            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (editable.length() >= 3) {
                    BehanceSDKLocationSelectionDialog.this.searchForCities(editable.toString());
                }
            }
        });
        this.citySearchStrEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKLocationSelectionDialog.6
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView textView, int i3, KeyEvent keyEvent) {
                if (i3 != 2) {
                    return false;
                }
                BehanceSDKLocationSelectionDialog.this.searchForCities(textView.getText().toString());
                return true;
            }
        });
        this.rootView.findViewById(R.id.bsdkLocationFilterDialogCloseDialogBtn).setOnClickListener(this);
        this.rootView.findViewById(R.id.bsdkLocationFilterDialogCitiesSectionBackBtn).setOnClickListener(this);
        this.rootView.findViewById(R.id.bsdkLocationFilterDialogCountriesSectionBackBtn).setOnClickListener(this);
        this.rootView.findViewById(R.id.bsdkLocationFilterDialogStatesSectionBackBtn).setOnClickListener(this);
        createCountriesListView();
        if (this.selectedCountryDTO != null) {
            String id = this.selectedCountryDTO.getId();
            if (BehanceSDKCountryDTO.COUNTRY_CODES_FOR_LOAD_STATES.contains(id)) {
                loadStates(id);
                displaySelectedStateItemInMainView();
            } else if (!id.equals(BehanceSDKCountryDTO.WORLD_WIDE_COUNTRY_ID)) {
                displaySelectedCityItemInMainView();
            }
        }
        if (this.selectedCityDTO != null) {
            displaySelectedCityItemInMainView();
        }
        return this.rootView;
    }

    private Bundle getBundleArguments(Bundle bundle) {
        if (bundle == null) {
            return getArguments();
        }
        return bundle;
    }

    private void createCountriesListView() {
        View viewFindViewById = this.rootView.findViewById(R.id.bsdkLocationFilterDialogSelectedCountryContainer);
        this.selectedCountryTxtView = (TextView) this.rootView.findViewById(R.id.bsdkLocationFilterDialogSelectedCountryTxtView);
        this.selectedCountryTxtView.setText(getSelectedCountry().getDisplayName());
        viewFindViewById.setTag(ClickTagData.SHOW_COUNTRIES_VIEW);
        viewFindViewById.setOnClickListener(this);
        this.countriesListView = (ListView) this.rootView.findViewById(R.id.bsdkLocationFilterDialogCountriesListView);
        this.countriesListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKLocationSelectionDialog.7
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                BehanceSDKLocationSelectionDialog.this.handleCountryListItemClick(adapterView, i);
            }
        });
        this.locationFiltersDataManager = BehanceSDKProfileLocationsDataManager.getInstance();
        this.locationFiltersDataManager.addListener(this);
        showProgressSpinner();
        this.locationFiltersDataManager.loadCountries();
    }

    private void updateSelectedCountryInCountriesListView(BehanceSDKCountryDTO behanceSDKCountryDTO) {
        BehanceSDKLocationFilterListItemArrayAdapter behanceSDKLocationFilterListItemArrayAdapter = (BehanceSDKLocationFilterListItemArrayAdapter) this.countriesListView.getAdapter();
        if (behanceSDKLocationFilterListItemArrayAdapter != null && !((BehanceSDKCountryDTO) behanceSDKLocationFilterListItemArrayAdapter.getSelectedLocationDTO()).equals(behanceSDKCountryDTO)) {
            behanceSDKLocationFilterListItemArrayAdapter.setSelectedLocationDTO(behanceSDKCountryDTO);
            behanceSDKLocationFilterListItemArrayAdapter.notifyDataSetChanged();
        }
    }

    private void displaySelectedStateItemInMainView() {
        this.selectedStateContainer.setVisibility(0);
        this.selectedStateTxtView = (TextView) this.rootView.findViewById(R.id.bsdkLocationFilterDialogSelectedStateTxtView);
        this.selectedStateTxtView.setText(getSelectedState().getDisplayName());
    }

    private void hideSelectedStateItemInMainView() {
        this.selectedStateDTO = null;
        this.selectedStateContainer.setVisibility(8);
    }

    private void updateSelectedStateInStatesListView(BehanceSDKStateDTO behanceSDKStateDTO) {
        BehanceSDKLocationFilterListItemArrayAdapter behanceSDKLocationFilterListItemArrayAdapter = (BehanceSDKLocationFilterListItemArrayAdapter) this.statesListView.getAdapter();
        if (behanceSDKLocationFilterListItemArrayAdapter != null && !((BehanceSDKStateDTO) behanceSDKLocationFilterListItemArrayAdapter.getSelectedLocationDTO()).equals(behanceSDKStateDTO)) {
            behanceSDKLocationFilterListItemArrayAdapter.setSelectedLocationDTO(behanceSDKStateDTO);
            behanceSDKLocationFilterListItemArrayAdapter.notifyDataSetChanged();
        }
    }

    private void displaySelectedCityItemInMainView() {
        this.selectedCityContainer.setVisibility(0);
        this.selectedCityTxtView.setText(getSelectedCity().getDisplayName());
    }

    private void hideSelectedCityItemInMainView() {
        this.selectedCityDTO = null;
        this.selectedCityContainer.setVisibility(8);
    }

    private void setCitiesListAdapter(List<BehanceSDKCityDTO> list) {
        ArrayList arrayList;
        if (list != null && !list.isEmpty()) {
            arrayList = new ArrayList(list);
        } else {
            arrayList = new ArrayList();
        }
        this.citiesListView.setAdapter((ListAdapter) new BehanceSDKLocationFilterListItemArrayAdapter(getActivity(), this.selectedCityDTO, arrayList));
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(INSTANCE_STATE_KEY_LAST_DISPLAYED_CHILD_INDEX, this.viewFlipper.getDisplayedChild());
        bundle.putSerializable(INSTANCE_STATE_KEY_SELECTED_COUNTRY, this.selectedCountryDTO);
        bundle.putSerializable(INSTANCE_STATE_KEY_SELECTED_STATE, this.selectedStateDTO);
        bundle.putSerializable(INSTANCE_STATE_KEY_SELECTED_CITY, this.selectedCityDTO);
        this.locationFiltersDataManager.removeListener(this);
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.locationFiltersDataManager.removeListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (view.getId() == R.id.bsdkLocationFilterDialogCitiesSectionBackBtn || view.getId() == R.id.bsdkLocationFilterDialogStatesSectionBackBtn || view.getId() == R.id.bsdkLocationFilterDialogCountriesSectionBackBtn) {
            displayMainView();
            if (view.getId() == R.id.bsdkLocationFilterDialogCitiesSectionBackBtn) {
                clearCitySearchResultsInDisplay();
                return;
            }
            return;
        }
        if (view.getId() == R.id.bsdkLocationFilterDialogCloseDialogBtn) {
            handleDoneClick();
            return;
        }
        if (tag instanceof ClickTagData) {
            if (tag == ClickTagData.SHOW_COUNTRIES_VIEW) {
                displayCountriesView();
            } else if (tag == ClickTagData.SHOW_STATES_VIEW) {
                displayStatesView();
            } else if (tag == ClickTagData.SHOW_CITIES_VIEW) {
                displayCitiesView();
            }
        }
    }

    private void handleDoneClick() {
        if (this.selectedCityDTO == null || BehanceSDKCityDTO.ALL_CITIES_ID.equals(this.selectedCityDTO.getId()) || this.selectedCityDTO.getDisplayName() == null || this.selectedCityDTO.getDisplayName().length() <= 0) {
            Toast.makeText(getActivity(), getResources().getString(R.string.bsdk_location_filter_dialog_city_empty_error), 0).show();
        } else {
            notifyListenersAndCloseDialog();
        }
    }

    private void notifyListenersAndCloseDialog() {
        if (getCallbacks() != null) {
            getCallbacks().onLocationFilterDone(this.selectedCountryDTO, this.selectedStateDTO, this.selectedCityDTO);
        }
        getDialog().dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCountryListItemClick(AdapterView<?> adapterView, int i) {
        Object itemAtPosition = adapterView.getItemAtPosition(i);
        if (itemAtPosition instanceof BehanceSDKCountryDTO) {
            this.selectedStateContainer.setVisibility(8);
            this.selectedStateDTO = null;
            this.selectedCountryDTO = (BehanceSDKCountryDTO) itemAtPosition;
            this.selectedCountryTxtView.setText(this.selectedCountryDTO.getDisplayName());
            displayMainView();
            hideSelectedStateItemInMainView();
            hideSelectedCityItemInMainView();
            String id = this.selectedCountryDTO.getId();
            if (BehanceSDKCountryDTO.COUNTRY_CODES_FOR_LOAD_STATES.contains(id)) {
                loadStates(id);
            } else if (!id.equals(BehanceSDKCountryDTO.WORLD_WIDE_COUNTRY_ID)) {
                displaySelectedCityItemInMainView();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleStateListItemClick(AdapterView<?> adapterView, int i) {
        Object itemAtPosition = adapterView.getItemAtPosition(i);
        if (itemAtPosition instanceof BehanceSDKStateDTO) {
            this.selectedStateDTO = (BehanceSDKStateDTO) itemAtPosition;
            this.selectedStateTxtView.setText(this.selectedStateDTO.getDisplayName());
            displayMainView();
            this.selectedCityDTO = null;
            if (!this.selectedStateDTO.getId().equals(BehanceSDKStateDTO.ALL_STATES_ID)) {
                displaySelectedCityItemInMainView();
            } else {
                hideSelectedCityItemInMainView();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCityListItemClick(AdapterView<?> adapterView, int i) {
        Object itemAtPosition = adapterView.getItemAtPosition(i);
        if (itemAtPosition instanceof BehanceSDKCityDTO) {
            this.selectedCityDTO = (BehanceSDKCityDTO) itemAtPosition;
            this.selectedCityTxtView.setText(this.selectedCityDTO.getDisplayName());
            displayMainView();
            clearCitySearchResultsInDisplay();
        }
    }

    private void displayMainView() {
        this.viewFlipper.setInAnimation(getActivity(), R.anim.bsdk_dialog_enter);
        this.viewFlipper.setOutAnimation(getActivity(), R.anim.bsdk_dialog_exit);
        this.viewFlipper.setDisplayedChild(0);
    }

    private void displayCountriesView() {
        if (!this.loadingInProgress) {
            this.viewFlipper.setInAnimation(getActivity(), R.anim.bsdk_dialog_enter);
            this.viewFlipper.setOutAnimation(getActivity(), R.anim.bsdk_dialog_exit);
            this.viewFlipper.setDisplayedChild(1);
            if (this.locationFiltersDataManager.isGetCountriesTaskInProgress()) {
                showProgressSpinner();
            } else {
                updateSelectedCountryInCountriesListView(this.selectedCountryDTO);
                hideProgressSpinner();
            }
        }
    }

    private void displayStatesView() {
        if (!this.loadingInProgress) {
            updateSelectedStateInStatesListView(this.selectedStateDTO);
            this.viewFlipper.setInAnimation(getActivity(), R.anim.bsdk_dialog_enter);
            this.viewFlipper.setOutAnimation(getActivity(), R.anim.bsdk_dialog_exit);
            this.viewFlipper.setDisplayedChild(2);
        }
    }

    private void displayCitiesView() {
        if (!this.loadingInProgress) {
            setCitiesListAdapter(null);
            this.viewFlipper.setInAnimation(getActivity(), R.anim.bsdk_dialog_enter);
            this.viewFlipper.setOutAnimation(getActivity(), R.anim.bsdk_dialog_exit);
            this.viewFlipper.getInAnimation().setAnimationListener(new Animation.AnimationListener() { // from class: com.behance.sdk.ui.dialogs.BehanceSDKLocationSelectionDialog.8
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    BehanceSDKLocationSelectionDialog.this.citySearchStrEditText.requestFocus();
                    ((InputMethodManager) BehanceSDKLocationSelectionDialog.this.getActivity().getSystemService("input_method")).showSoftInput(BehanceSDKLocationSelectionDialog.this.citySearchStrEditText, 0);
                }
            });
            this.viewFlipper.setDisplayedChild(3);
        }
    }

    private BehanceSDKCountryDTO getSelectedCountry() {
        if (this.selectedCountryDTO == null) {
            this.selectedCountryDTO = getWorldWideCountryDTO();
        }
        return this.selectedCountryDTO;
    }

    private BehanceSDKCountryDTO getWorldWideCountryDTO() {
        BehanceSDKCountryDTO behanceSDKCountryDTO = new BehanceSDKCountryDTO();
        behanceSDKCountryDTO.setDisplayName(getResources().getString(R.string.bsdk_location_filter_dialog_country_label));
        behanceSDKCountryDTO.setId(BehanceSDKCountryDTO.WORLD_WIDE_COUNTRY_ID);
        return behanceSDKCountryDTO;
    }

    private BehanceSDKStateDTO getSelectedState() {
        if (this.selectedStateDTO == null) {
            this.selectedStateDTO = getAllStatesDTO();
        }
        return this.selectedStateDTO;
    }

    private BehanceSDKStateDTO getAllStatesDTO() {
        BehanceSDKStateDTO behanceSDKStateDTO = new BehanceSDKStateDTO();
        behanceSDKStateDTO.setDisplayName(getResources().getString(R.string.bsdk_location_filter_dialog_state_label));
        behanceSDKStateDTO.setId(BehanceSDKStateDTO.ALL_STATES_ID);
        return behanceSDKStateDTO;
    }

    private BehanceSDKCityDTO getSelectedCity() {
        if (this.selectedCityDTO == null) {
            this.selectedCityDTO = getAllCitiesDTO();
        }
        return this.selectedCityDTO;
    }

    private BehanceSDKCityDTO getAllCitiesDTO() {
        BehanceSDKCityDTO behanceSDKCityDTO = new BehanceSDKCityDTO();
        behanceSDKCityDTO.setDisplayName(getResources().getString(R.string.bsdk_location_filter_dialog_city_label));
        behanceSDKCityDTO.setId(BehanceSDKCityDTO.ALL_CITIES_ID);
        return behanceSDKCityDTO;
    }

    private void showProgressSpinner() {
        this.loadingInProgress = true;
        this.progressSpinner.setVisibility(0);
    }

    private void hideProgressSpinner() {
        this.loadingInProgress = false;
        this.progressSpinner.setVisibility(4);
    }

    private void loadStates(String str) {
        showProgressSpinner();
        this.locationFiltersDataManager.loadStates(str);
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKLocationFiltersDataManagerListener
    public void onCountriesLoadingSuccess(List<BehanceSDKCountryDTO> list) {
        ArrayList arrayList;
        if (list != null && !list.isEmpty()) {
            arrayList = new ArrayList(list);
        } else {
            arrayList = new ArrayList();
        }
        this.countriesListView.setAdapter((ListAdapter) new BehanceSDKLocationFilterListItemArrayAdapter(getActivity(), this.selectedCountryDTO, arrayList));
        hideProgressSpinner();
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKLocationFiltersDataManagerListener
    public void onCountriesLoadingFailure(Exception exc) {
        hideProgressSpinner();
        logger.error(exc, "Problem loading Countries list", new Object[0]);
        Toast.makeText(getActivity(), getResources().getString(R.string.bsdk_location_filter_dialog_failed_to_load_error), 0).show();
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKLocationFiltersDataManagerListener
    public void onStatesLoadingSuccess(String str, List<BehanceSDKStateDTO> list) {
        ArrayList arrayList;
        if (list != null && !list.isEmpty()) {
            arrayList = new ArrayList(list);
        } else {
            arrayList = new ArrayList();
        }
        displaySelectedStateItemInMainView();
        this.statesListView.setAdapter((ListAdapter) new BehanceSDKLocationFilterListItemArrayAdapter(getActivity(), this.selectedStateDTO, arrayList));
        hideProgressSpinner();
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKLocationFiltersDataManagerListener
    public void onStatesLoadingFailure(String str, Exception exc) {
        logger.error(exc, "Problem loading States for [Country id - %s]", str);
        Toast.makeText(getActivity(), getResources().getString(R.string.bsdk_location_filter_dialog_failed_to_load_error), 0).show();
        hideProgressSpinner();
        hideSelectedStateItemInMainView();
        displaySelectedCityItemInMainView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void searchForCities(String str) {
        showProgressSpinner();
        this.locationFiltersDataManager.searchForCities(this.selectedCountryDTO != null ? this.selectedCountryDTO.getId() : null, this.selectedStateDTO != null ? this.selectedStateDTO.getId() : null, str);
    }

    private void clearCitySearchResultsInDisplay() {
        hideProgressSpinner();
        ((InputMethodManager) getActivity().getSystemService("input_method")).hideSoftInputFromWindow(this.rootView.getWindowToken(), 0);
        this.citySearchStrEditText.setText("");
        this.citiesListView.setAdapter((ListAdapter) null);
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKLocationFiltersDataManagerListener
    public void onCitiesLoadingSuccess(BehanceSDKGetCitiesAsyncTaskParams behanceSDKGetCitiesAsyncTaskParams, List<BehanceSDKCityDTO> list) {
        if (this.viewFlipper.getDisplayedChild() == 3) {
            setCitiesListAdapter(list);
            hideProgressSpinner();
        }
    }

    @Override // com.behance.sdk.listeners.IBehanceSDKLocationFiltersDataManagerListener
    public void onCitiesLoadingFailure(BehanceSDKGetCitiesAsyncTaskParams behanceSDKGetCitiesAsyncTaskParams, Exception exc) {
        logger.error(exc, "Problem loading Cities for [Country id - %s] [State id - %s] [Search Str - %s]", behanceSDKGetCitiesAsyncTaskParams.getCountryId(), behanceSDKGetCitiesAsyncTaskParams.getStateId(), behanceSDKGetCitiesAsyncTaskParams.getCitySearchStr());
        Toast.makeText(getActivity(), getResources().getString(R.string.bsdk_location_filter_dialog_failed_to_load_error), 0).show();
        if (this.viewFlipper.getDisplayedChild() == 3) {
            hideProgressSpinner();
        }
    }

    public Callbacks getCallbacks() {
        return this.callbacks;
    }

    public void setCallbacks(Callbacks callbacks) {
        this.callbacks = callbacks;
    }

    @Override // android.support.v4.app.DialogFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        if (getDialog() != null && getActivity() != null && getActivity().getResources().getBoolean(R.bool.bsdk_big_screen)) {
            getDialog().getWindow().setLayout(getActivity().getResources().getDimensionPixelSize(R.dimen.global_filter_dialog_width), getActivity().getResources().getDimensionPixelSize(R.dimen.global_filter_dialog_height));
        }
    }
}
