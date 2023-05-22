module InstrumentsHelper
    def instrument_auth(instrument)
        user_signed_in? && current_user.id == instrument.user_id
    end
end
