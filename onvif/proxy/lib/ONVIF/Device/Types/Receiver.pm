package ONVIF::Device::Types::Receiver;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %Token_of :ATTR(:get<Token>);
my %Configuration_of :ATTR(:get<Configuration>);

__PACKAGE__->_factory(
    [ qw(        Token
        Configuration

    ) ],
    {
        'Token' => \%Token_of,
        'Configuration' => \%Configuration_of,
    },
    {
        'Token' => 'ONVIF::Device::Types::ReferenceToken',
        'Configuration' => 'ONVIF::Device::Types::ReceiverConfiguration',
    },
    {

        'Token' => 'Token',
        'Configuration' => 'Configuration',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Device::Types::Receiver

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Receiver from the namespace http://www.onvif.org/ver10/schema.

Description of a receiver, including its token and configuration. 




=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * Token


=item * Configuration




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Device::Types::Receiver
   Token => $some_value, # ReferenceToken
   Configuration =>  { # ONVIF::Device::Types::ReceiverConfiguration
     Mode => $some_value, # ReceiverMode
     MediaUri =>  $some_value, # anyURI
     StreamSetup =>  { # ONVIF::Device::Types::StreamSetup
       Stream => $some_value, # StreamType
       Transport =>  { # ONVIF::Device::Types::Transport
         Protocol => $some_value, # TransportProtocol
       },
     },
   },
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut

