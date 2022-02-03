from stackstate_checks.base import AgentCheck, AgentIntegrationInstance, ConfigurationError


class WeatherIntegration(AgentCheck):

    def get_instance_key(self, instance):
        if 'city' not in instance:
            raise ConfigurationError('Missing city in topology instance configuration.')

        return AgentIntegrationInstance("weather", instance['city'])

    def check(self, instance):
        # implement check code
        pass